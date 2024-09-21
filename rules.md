# Rules for GPT

## Rule 1: Definition of a Module

A module, in practice, is the first folder in `./`. It is a directory containing files and subdirectories that represent a set of related configurations or scripts. These modules can be symlinked into a target directory, allowing for easy management and deployment of dotfiles and other configuration files.

### Examples

- **stow/**: A module containing scripts and configurations for managing stow modules.
- **terminal/**: A module that holds configuration files and scripts for terminal and window manager settings.
- **ai/**: A module that includes configuration for AI assistance tools.

Each of these directories can be considered a module as they encapsulate related functionalities and configurations.

## Rule 2: Responding to "show [filename with or without extension]"

If the user starts a prompt with "show [filename with or without extension]", you should return a concise, ordered list of the file contents. This list should include the main sections or components of the file, providing a brief overview of its structure and purpose.

## Rule 3: Responding to "show module [modulename]"

If the user starts a prompt with "show module [modulename]", you should return a concise, ordered list of the contents of the files within the specified module. This list should include the names of the files and a brief description of their purpose or contents, if available.
## Rule 4: Executable Scripts in `bin` Folders

All scripts located in a `bin` folder should have executable permissions set. This can be done using the command `chmod +x [script_name]`.
