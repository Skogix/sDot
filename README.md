# Dotfiles Repository

This repository is designed to manage and deploy your dotfiles using GNU Stow. It is particularly useful after a fresh Arch Linux installation to quickly set up your development environment.

## Prerequisites

- **GNU Stow**: Ensure that GNU Stow is installed on your system. You can install it using the following command:
  ```bash
  sudo pacman -S stow
  ```

## Usage

### Stowing Dotfiles

To stow your dotfiles, navigate to the `dot` directory and use the following command:

```bash
cd ~/dot
stow <directory-name>
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

## Bin Folder Scripts

The `bin` folder contains utility scripts to manage your dotfiles, now located directly under the `dot` directory:

- **stow_folder.sh**: This script takes a folder name as an argument and uses GNU Stow to create symlinks for the specified folder in your home directory. It assumes the folder is located in the `~/dot` directory.

- **move_and_stow.sh**: This script moves a specified folder to the `~/dot/` directory and then uses the `stow_folder.sh` script to stow it. It requires the full path to the folder as an argument.

The repository should be structured as follows:
```
dot/
  ├── bin/
  ├── stow/
  │   ├── .config/
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

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing

Contributions are welcome! Please open an issue or submit a pull request for any improvements or suggestions.
