# Dotfiles Repository

This repository is designed to manage and deploy your dotfiles using GNU Stow and only uses Aider AI. Folders inside `~/dot` are called modules, and each module stows its own files. This setup is particularly useful after a fresh Arch Linux installation to quickly set up your development environment.

## Prerequisites

- **GNU Stow**: Ensure that GNU Stow is installed on your system. Via Arch Linux, it is available as `aider-chat` via AUR. You can install it using the following command:
  ```bash
  sudo pacman -S stow
  ```

## Usage

### Stowing Dotfiles with Custom Targets

To stow your dotfiles with specific targets, navigate to the `dot` directory and use the following command:

```bash
cd ~/dot
stow --dotfiles --target=$HOME/bin bin
stow --dotfiles --target=$HOME/.config dot-config
```

This will create symlinks for the `bin` directory to `$HOME/bin` and the `config` directory to `$HOME/.config`.

To stow your dotfiles, navigate to the `dot` directory and use the following command:

```bash
cd ~/dot
stow --dotfiles <directory-name>
```

This will create symlinks for the specified directory back to its respective location in your home directory.

1. **Clone the Repository**: Clone this repository to your home directory or any preferred location.
   ```bash
   git clone <repository-url> ~/dot
   cd ~/dot
   ```

2. **Organize Your Dotfiles**: Place your configuration files into appropriately named directories within the `dot` directory. Each directory should represent a specific application or tool.

3. **Add Files to the Repository**: If you want to add files from your local computer to the repository, move them into the appropriate directory within the `dot` folder. For example, to add a new script to the `bin` directory, move it like this:
   ```bash
   mv /path/to/your/script ~/dot/bin/
   ```

4. **Deploy Dotfiles**: Use Stow to create symlinks for the dotfiles in your home directory.
   ```bash
   stow <directory-name>
   ```

   For example, to deploy configurations for `vim`, run:
   ```bash
   stow vim
   ```

### Unstowing Dotfiles

To remove the symlinks created by stowing, use the following command:

```bash
stow --dotfiles --delete <directory-name>
```

This will remove the symlinks for the specified directory from your home directory.

## Stow Module Scripts and Bin Folders

Each module in the `dot` directory may contain a `bin` folder, which is intended for shell scripts. Ensure that all scripts in these `bin` folders are executable by running the following command:

```bash
chmod +x <script-name>
```

The `stow` module contains several utility scripts to manage your dotfiles:

- **add_file_to_module.sh**: Adds a specified file to a module within the `~/dot` directory and uses GNU Stow to manage the symlinks. It requires the file path and module name as arguments.

- **add_folder_to_module.sh**: Similar to `add_file_to_module.sh`, but for folders. It moves a specified folder to a module within the `~/dot` directory and manages the symlinks.

- **delete_module.sh**: Deletes the symlinks for a specified module from your home directory using GNU Stow. It requires the module name as an argument.

- **dump.sh**: Sets the global Git user name and email. This script is useful for configuring Git quickly.

- **list_modules.sh**: Lists all modules in the `~/dot` directory and displays their directory structure using the `tree` command.

- **move_and_stow.sh**: Moves a specified folder to the `~/dot/stow` directory and uses the `stow_folder.sh` script to stow it. It requires the full path to the folder as an argument.

- **stow_module.sh**: Uses GNU Stow to create symlinks for a specified module in your home directory. It requires the module name as an argument.

The repository should be structured as follows:
```
dot/
  ├── bin/
  ├── dot-config/
  ├── org/
  │   └── todo/
  │       └── packagesForChromiumPlaywright
  ├── vim/
  │   ├── .vimrc
  │   └── .vim/
  ├── zsh/
  │   └── .zshrc
  └── ...
```

## File and Folder Layout

Ensure that the directory structure is organized as follows:

- Each module should be placed inside the `dot` directory.
- Modules should be named according to the application or tool they represent.
- Each module can contain a `bin` folder for executable scripts.
- Configuration files should be placed directly within their respective module directories.

Example structure:
```
dot/
  ├── bin/
  ├── dot-config/
  ├── org/
  │   └── todo/
  │       └── packagesForChromiumPlaywright
  ├── vim/
  │   ├── .vimrc
  │   └── .vim/
  ├── zsh/
  │   └── .zshrc
  └── ...
```

## Customization

Feel free to customize the directory structure and dotfiles according to your needs. Ensure that each directory contains the relevant configuration files for the application it represents.

## Version Control

This project is using gitflow-avh (Vincent Driessen's branching model).

## Documentation

ALIASES.md, CONVENTIONS.md, and README.md are opened read-only when using Rider to inform the AI how to behave.

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or suggestions.
