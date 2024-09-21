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



## Rule 6: Module Structure and Placement of Shell Scripts

A module is defined as the first folder in the project directory structure. Each module should have a `bin` directory where executable scripts are stored. The structure should follow the pattern `module/bin/module/script.sh`. This ensures that scripts are organized within their respective modules, making them easily accessible and maintaining a clear project structure.

## Command Definition

A command is defined as the initial part of the user's input. It specifies the action or response expected from the system, guiding the subsequent processing of the input.

## Command List

### Command 1: Responding to "show [filename with or without extension]"

This command guides how to respond when a user requests to "show" a file. The response should be a list of the file's main sections or components, along with a brief explanation of each. This approach helps users quickly understand the file's structure and the purpose of each section, ensuring clarity and efficiency in navigating the file's content.

### Command 2: Responding to "show module [modulename]"

If the user starts a prompt with "show module [modulename]", you should return a concise, ordered list of the contents of the files within the specified module. This list should include the names of the files and a brief description of their purpose or contents, if available.

### Command 3: Responding to "list [something]"

When the user asks to list something, provide every item in the list, ensuring completeness and accuracy.

## Rule 7: Running Scripts from Bin Folders

If the input starts with "sh", run the corresponding script from a `bin` folder. This ensures that scripts are executed correctly and consistently from their designated locations.


## Rule 10: Maintaining Rule Order

Ensure that all rule numbers in this document are sequential and in order. This helps maintain clarity and consistency in the documentation.
