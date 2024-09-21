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
## Rule 4: Responding to "list [something]"

When the user asks to list something, provide every item in the list, ensuring completeness and accuracy.

## Rule 5: Editing .norg Files

When editing a `.norg` file, ensure that the content follows the standard syntax for Neorg files, including the correct use of headings and structure.

## Rule 10: Reading Help Files

If the input mentions a specific term and there is a corresponding help file named `[term].help`, read the contents of that file. This ensures that users can easily access help information for various topics.

### Examples

- If the input mentions "aider", read the contents of `aider.help`.
- If the input mentions "git", read the contents of `git.help`.

### List of .help Files

- aider.help

## Rule 8: Running Scripts from Bin Folders

If the input starts with "sh", run the corresponding script from a `bin` folder. This ensures that scripts are executed correctly and consistently from their designated locations.

## Rule 5: Placement of Shell Scripts

All `.sh` files should be placed in the `bin` folder within the appropriate module. This ensures that scripts are organized and easily accessible.

## Rule 7: Deleting Files from Git

Whenever a file is deleted from the repository, it should also be removed from git using the command `git rm [file_name]`. This ensures that the file is properly tracked and removed from the version control system.

## Rule 6: Executable Scripts in `bin` Folders

alias my_command='function _my_command() { echo "The arguments are: $@"; }; _my_command'

All scripts located in a `bin` folder should have executable permissions set. This can be done using the command `chmod +x [script_name]`.
