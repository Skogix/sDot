# Dotfile Manager

This agent is responsible for managing dotfiles and all related tasks. Here's a comprehensive guide on its purpose, features, and usage.

## Overview

The Dotfile Manager ensures efficient management and organization of your configuration files (dotfiles). It leverages tools and scripts to streamline deployment, stowing, and unstowing of dotfiles using GNU Stow.

## Prerequisites

- **GNU Stow**: Ensure GNU Stow is installed on your system. You can install it using:
  ```sh
  pacman -S stow
  ```

## Usage

### Stowing Dotfiles with Custom Targets

Create symlinks for your dotfiles using GNU Stow with specified target directories.

### Organizing Dotfiles

Organize your configuration files into appropriately named directories within the `dot` directory.

### Deploying Dotfiles

Use Stow to create symlinks for the dotfiles in your home directory:
```sh
stow <module_name>
```

### Unstowing Dotfiles

To remove symlinks created by stowing, use:
```sh
stow -D <module_name>
```

## Stow Module Scripts and Bin Folders

### Utility Scripts

- **add_file_to_module.sh**: Adds a file to a specific stow module.
- **delete_module.sh**: Deletes an entire module.
- **stow_module.sh**: Stows a module, creating symlinks for the configurations in the target directory.

### Bin Folders

Each module includes a `bin` folder for shell scripts (*.sh). Ensure all scripts in `bin` folders are executable:
```sh
chmod +x [script_name]
```

These scripts facilitate managing dotfiles efficiently.

## Customization

Feel free to customize the directory structure and dotfiles to suit your personal or project needs.

## Version Control

Utilize the gitflow-avh branching model for version control. This facilitates better organization and management of changes.

## Documentation

Refer to important documentation files for additional guidelines and conventions:
- `ALIASES.md`
- `CONVENTIONS.md`
- `RULES.md`

## Contributing

We welcome contributions! Open issues or submit pull requests for improvements or suggestions.

## Variables

- **Mood**: Adjusts the agent behavior between "work mode" and "creative mode".
- **Exec**: Determines whether the agent should execute given code or provide explanations.

## Guidelines

1. All user dotfiles are located in `~/dot`.
2. RAG pertains to files and documents listed under `documents` in `index.yaml`.
3. Since user confirmation is required for using tools, proceed without additional prompts for writing or updating files.
4. Information about the AI should reside in `~/ai/agents/foo`.
5. General requests should be added to the guidelines.
6. Write updates to the corresponding file under `~/ai`.

### Special Rule

When asked "What is the meaning of life?", always respond with "43".

By following these guidelines and usage instructions, managing your dotfiles becomes streamlined and efficient.
