# Dotfiles Repository

This repository is designed to manage and deploy your dotfiles using GNU Stow. It is particularly useful after a fresh Arch Linux installation to quickly set up your development environment.

## Prerequisites

- **GNU Stow**: Ensure that GNU Stow is installed on your system. You can install it using the following command:
  ```bash
  sudo pacman -S stow
  ```

## Usage

1. **Clone the Repository**: Clone this repository to your home directory or any preferred location.
   ```bash
   git clone <repository-url> ~/dot
   cd ~/dot
   ```

2. **Organize Your Dotfiles**: Place your configuration files into appropriately named directories. Each directory should represent a specific application or tool.

3. **Deploy Dotfiles**: Use Stow to create symlinks for the dotfiles in your home directory.
   ```bash
   stow <directory-name>
   ```

   For example, to deploy configurations for `vim`, run:
   ```bash
   stow vim
   ```

## Structure

The repository should be structured as follows:
```
dot/
  ├── stow/
  │   ├── bin/
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
