# Rules for GPT

## Rule 1: Definition of a Module

A module, in practice, is the first folder in `./`. It is a directory containing files and subdirectories that represent a set of related configurations or scripts. These modules can be symlinked into a target directory, allowing for easy management and deployment of dotfiles and other configuration files.

### Examples

- **stow/**: A module containing scripts and configurations for managing stow modules.
- **terminal/**: A module that holds configuration files and scripts for terminal and window manager settings.
- **ai/**: A module that includes configuration for AI assistance tools.

Each of these directories can be considered a module as they encapsulate related functionalities and configurations.

### Prompt Type Examples

1. **Instruction Prompts**: 
   - Question: "Define a module as the first folder in `./`. It should contain related configurations or scripts that can be symlinked for easy management."
   - Answer: A module is defined as the first folder in `./`. It should contain related configurations or scripts that can be symlinked for easy management and deployment of dotfiles and other configuration files.

2. **Completion Prompts**: 
   - Question: "A module is defined as the first folder in `./`, containing files and subdirectories that..."
   - Answer: A module is defined as the first folder in `./`, containing files and subdirectories that represent a set of related configurations or scripts.

3. **Scenario Prompts**: 
   - Question: "Imagine you are organizing a project. Each module is the first folder in `./` and contains related configurations or scripts. How would you structure it?"
   - Answer: In organizing a project, each module is the first folder in `./` and contains related configurations or scripts. This structure allows for easy management and deployment of dotfiles and other configuration files.

4. **Demonstration Prompts (Few-shot Learning)**: 
   - Question: "Example 1: The `stow/` directory is a module containing scripts for managing stow modules. Example 2: The `terminal/` directory is a module for terminal settings. Define a module."
   - Answer: Example 1: The `stow/` directory is a module containing scripts for managing stow modules. Example 2: The `terminal/` directory is a module for terminal settings. A module is defined as the first folder in `./` that encapsulates related functionalities and configurations.

5. **Fine-tuned Prompts**: 
   - Question: "What is a module in the context of a project directory?"
   - Answer: In the context of a project directory, a module is the first folder in `./` that contains files and subdirectories representing a set of related configurations or scripts.

## Rule 2: Responding to "show [filename with or without extension]"

If the user starts a prompt with "show [filename with or without extension]", you should return a concise, ordered list of the file contents. This list should include the main sections or components of the file, providing a brief overview of its structure and purpose.

## Rule 3: Responding to "show module [modulename]"

If the user starts a prompt with "show module [modulename]", you should return a concise, ordered list of the contents of the files within the specified module. This list should include the names of the files and a brief description of their purpose or contents, if available.

## Rule 4: Responding to "list [something]"

When the user asks to list something, provide every item in the list, ensuring completeness and accuracy.

## Rule 5: Editing .norg Files

When editing a `.norg` file, ensure that the content follows the standard syntax for Neorg files, including the correct use of headings and structure.

## Rule 6: Module Structure and Placement of Shell Scripts

A module is defined as the first folder in the project directory structure. Each module should have a `bin` directory where executable scripts are stored. The structure should follow the pattern `module/bin/module/script.sh`. This ensures that scripts are organized within their respective modules, making them easily accessible and maintaining a clear project structure.

## Rule 7: Executable Scripts in `bin` Folders

All scripts located in a `bin` folder should have executable permissions set. This can be done using the command `chmod +x [script_name]`.

## Rule 8: Deleting Files from Git

Whenever a file is deleted from the repository, it should also be removed from git using the command `git rm [file_name]`. This ensures that the file is properly tracked and removed from the version control system.

## Rule 9: Running Scripts from Bin Folders

If the input starts with "sh", run the corresponding script from a `bin` folder. This ensures that scripts are executed correctly and consistently from their designated locations.

## Rule 11: Updating Lists

Whenever a list is present in any file, it should be updated to reflect the current state whenever changes are made. This ensures that all lists are accurate and up-to-date, providing reliable information.

## Rule 12: Echo Output Format in Scripts

Every `echo` output in a script should start with `[skogix]:` to make it easier to follow in the output. This ensures that outputs are easily identifiable and consistent across all scripts. Regular comments in the code should not include `[skogix]:`.

Every script should output detailed information about what it is doing and the state of every variable. This ensures that the script's functionality is clear and that the state of the program can be easily understood at any point during its execution.

If the input mentions a specific term and there is a corresponding help file named `[term].help`, read the contents of that file. This ensures that users can easily access help information for various topics.

### Examples

- If the input mentions "aider", read the contents of `aider.help`.
- If the input mentions "git", read the contents of `git.help`.

### List of .help Files

- aider.help
- fzf.help

## Rule 13: Adding Files to Git

All files known to the system should be added to the git repository. This ensures that all files are tracked and versioned properly.
