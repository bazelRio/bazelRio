import os
import json
from urllib.request import urlopen

def check_for_updates(vendor_folder):
    print(vendor_folder)

    for vendor_name in os.listdir(vendor_folder):
        vendor_file = sorted(os.listdir(os.path.join(vendor_folder, vendor_name)))[-1]
        vendor_file = os.path.join(vendor_folder, vendor_name, vendor_file)
        print(vendor_file)
        
        with open(vendor_file, "r") as f:
            vendor_dep = json.load(f)
        
        json_url = vendor_dep["jsonUrl"]

        try:
            url_result = urlopen(json_url)
            data = url_result.read()
        except:
            print(f"Failed to query new vendordep for {vendor_name}")
            continue

        newest_vendordep = json.loads(data.decode("utf-8"))
        newest_filename = os.path.join(vendor_folder, vendor_name, newest_vendordep["version"] + ".json")
        with open(newest_filename, 'w') as f:
            json.dump(newest_vendordep, f, indent=4)

def main():    
    SCRIPT_DIR = os.path.dirname(os.path.realpath(__file__))
    check_for_updates(os.path.join(SCRIPT_DIR, "vendordeps"))


if __name__ == "__main__":
    main()