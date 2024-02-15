# Ubuntu Developer Setup Scripts (ubuntu-run)

Scripts to install and configure software and packages after installing a fresh Ubuntu for developers.

## Installation

To use these scripts, follow these steps:

1. Clone the repository:

    ```bash
    git clone https://github.com/azonedev/ubuntu-run.git
    ```

2. Change into the repository directory:

    ```bash
    cd ubuntu-run
    ```

3. Run the installation script:

    ```bash
    chmod +x install.sh
    ./install.sh
    ```

## Usage

The installation script (`install.sh`) offers a set of options to install and configure various software and packages. The script will prompt you for each installation step. Answer "yes" or "no" as appropriate.

### Available Options

1. **Update and Upgrade System**: Updates and upgrades the system.

2. **Google Chrome**: Installs Google Chrome (profiles setup later).

3. **Update Snap**: Updates the snap package manager.

4. **Code Editors (VS Code, PhpStorm, dbgate)**: Installs Visual Studio Code, PhpStorm, and dbgate.

5. **Other Tools (curl, git, jq, postman, PHP)**: Installs curl, git, jq, postman, and PHP.

6. **Composer**: Installs Composer, a dependency manager for PHP.

7. **Go**: Installs the Go programming language.

8. **Download Apployee**: Downloads the Apployee desktop app.

9. **Run Apployee**: Runs the Apployee desktop app.

10. **VLC Player**: Installs VLC media player.

11. **Docker and Docker-Compose**: Installs Docker and Docker-Compose.

### Notes

- For Docker installation, you need to log out and log back in to apply group changes.

- Reboot your system after completing the installation for some changes to take effect.

## Contribution

Feel free to contribute by adding more scripts or improving existing ones. 

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
