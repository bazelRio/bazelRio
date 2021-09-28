from wpiformat import main
from os import environ, chdir

if __name__ == "__main__":
    chdir(environ["BUILD_WORKSPACE_DIRECTORY"])
    main()
