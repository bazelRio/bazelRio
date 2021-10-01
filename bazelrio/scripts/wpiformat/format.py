from wpiformat import main
from os import environ, chdir
from sys import exit

if __name__ == "__main__":
    chdir(environ["BUILD_WORKSPACE_DIRECTORY"])
    exit(main())
