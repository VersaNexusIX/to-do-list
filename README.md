# Cute Todo List - Interactive Todo Application with Cute Interface

Cute Todo List is an interactive task management application built with the Ada programming language. The application features a charming, colorful interface with complete functionality for managing your daily task lists.

## Features

- Add New Tasks: Add tasks with clear and detailed descriptions
- Toggle Task Status: Mark tasks as complete with visual indicators
- Edit Tasks: Modify descriptions of existing tasks
- Delete Tasks: Remove tasks from your task list
- Colored Interface: Uses ANSI color codes for an attractive terminal display
- Input Validation: Proper error handling for invalid inputs
- Motivational Messages: Positive feedback to encourage productivity

## Color Palette

- Pink (Code 95): Used for headers and exit options
- Mint (Code 92): Used for confirmations and completed tasks
- Blue (Code 96): Used for task numbers and toggle options
- Cream (Code 93): Used for menu borders
- Gray (Code 90): Used for informational messages and separators

## Main Menu Options

1. Add New Task: Insert a new task into your task list
2. Toggle Task: Change the completion status of a task
3. Edit Task: Modify the description of an existing task
4. Delete Task: Remove a task from your list
5. Exit: Close the application with a farewell message

## System Requirements

### Windows
- Ada compiler (GNAT) version 2021 or newer
- Command Prompt or PowerShell with ANSI escape sequence support
- Minimum 256MB RAM
- Minimum 500MB disk space for installation

### macOS
- Ada compiler (GNAT) version 2021 or newer
- Terminal.app or iTerm2
- Minimum 256MB RAM
- Minimum 500MB disk space for installation
- Xcode Command Line Tools (optional)

### Linux
- Ada compiler (GNAT) version 2021 or newer
- Terminal (bash, zsh, or other shells)
- Minimum 256MB RAM
- Minimum 500MB disk space for installation
- Build-essential or development tools

## Complete Installation Guide

### Installation on Windows

Step 1: Download and Install GNAT

Visit the official website https://www.adacore.com/download and select GNAT Community or FSF GNAT for Windows. Download the installer that matches your Windows version (32-bit or 64-bit). Run the installer by double-clicking the downloaded file. Follow the installation wizard and choose the default installation location or customize it as needed. Ensure that the "Add to PATH" or "Add to System PATH" option is checked during installation. Click Finish to complete the installation.

Step 2: Verify GNAT Installation

Open Command Prompt by pressing Win+R, type "cmd" and press Enter. Type the command gnat --version to verify the installation. If successful, the GNAT version will be displayed. If not, add the GNAT bin folder to PATH through System Environment Variables.

Step 3: Download Source Files

Open https://github.com/VersaNexusIX/to-do-list in your browser. Click the green "Code" button and select "Download ZIP". Extract the ZIP file to your desired folder, for example C:\Users\YourUsername\Documents\cute-todo. Open Command Prompt and navigate to that folder using the command cd C:\Users\YourUsername\Documents\cute-todo.

Step 4: Compile and Run

Ensure that the file todo.adb is in the same folder as your Command Prompt. Type the command gnatmake todo.adb to compile the Ada file. Wait for the compilation process to complete. After completion, type .\cute_todo.exe or cute_todo.exe to run the application. The application will display the main menu with beautiful colors.

### Installation on macOS

Step 1: Installation Using Homebrew

Open Terminal by pressing Cmd+Space, type "Terminal" and press Enter. If Homebrew is not installed, first run the command /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)". After Homebrew is installed, type brew install gnat to install the GNAT compiler. Wait for the installation to complete (this may take several minutes).

Step 2: Verify GNAT Installation

In Terminal, type gnat --version to ensure GNAT is installed correctly. The GNAT version will be displayed if the installation was successful.

Step 3: Download Source Files

Open https://github.com/VersaNexusIX/to-do-list in Safari or your preferred browser. Click the green Code button and select "Download ZIP". The file will be downloaded to your Downloads folder. Open Terminal, type cd ~/Downloads and extract the file with unzip to-do-list-main.zip. Navigate to the project folder with cd to-do-list-main.

Step 4: Compile and Run

In Terminal, type gnatmake todo.adb to compile the Ada file. The compilation process will run and create an executable. After completion, run the application with ./cute_todo or ./todo depending on the name of the generated executable. The application will open with a colored interface in Terminal.

### Installation on Linux (Ubuntu/Debian)

Step 1: Install GNAT via Package Manager

Open Terminal by pressing Ctrl+Alt+T. Update the package manager by typing sudo apt update. Install the GNAT compiler with sudo apt install gnat. Enter your password when prompted. Wait for the installation to complete.

Step 2: Verify GNAT Installation

In Terminal, type gnat --version to verify the installation. The output will display information about the installed GNAT version.

Step 3: Download Source Files

Use wget or curl to download the repository. Type wget https://github.com/VersaNexusIX/to-do-list/archive/refs/heads/main.zip or curl -L https://github.com/VersaNexusIX/to-do-list/archive/refs/heads/main.zip -o to-do-list.zip. Extract the file with unzip to-do-list.zip. Navigate to the project folder with cd to-do-list-main.

Step 4: Compile and Run

In Terminal, type gnatmake todo.adb to compile. After compilation completes, run the application with ./cute_todo or ./todo. The application will run directly in your Terminal.

### Installation on Linux (Fedora/Red Hat)

Step 1: Install GNAT via DNF

Open Terminal. Update the package manager with sudo dnf update. Install GNAT with sudo dnf install gcc-gnat. Enter your password when prompted and confirm with "y".

Step 2: Verify Installation

Type gnat --version in Terminal to ensure GNAT was installed successfully.

Step 3: Download and Extract Source Files

Use curl to download: curl -L https://github.com/VersaNexusIX/to-do-list/archive/refs/heads/main.zip -o to-do-list.zip. Extract with unzip to-do-list.zip. Navigate to the folder with cd to-do-list-main.

Step 4: Compile and Run

Run gnatmake todo.adb to compile. After completion, run the application with ./cute_todo or ./todo.

### Installation on Linux (Arch Linux)

Step 1: Install GNAT via Pacman

Open Terminal. Update the package manager with sudo pacman -Syu. Install GNAT with sudo pacman -S gcc-ada. Confirm the installation by pressing "y".

Step 2: Verify GNAT

Type gnat --version to check the installation.

Step 3: Download Source

Use git to clone the repository more easily: git clone https://github.com/VersaNexusIX/to-do-list.git. Navigate to the folder with cd to-do-list.

Step 4: Compile and Run

Type gnatmake todo.adb to compile the program. Run with ./cute_todo or ./todo.

## Usage Guide

After running the application, you will see a cute header with the title "MY KAWAII TODO LIST" displayed in pink and blue colors.

To add a task, select option 1 by typing "1" and pressing Enter. Enter the description of your task and press Enter. The system will display the confirmation "Added! You got this!".

To mark a task as complete or incomplete, select option 2. Enter the index number of the task you want to toggle. Completed tasks will be displayed with a heart symbol and colored in mint.

To edit a task, select option 3. Enter the index number of the task you want to modify. Enter the new description for the task. The system will confirm with "Updated successfully!".

To delete a task, select option 4. Enter the index number of the task you want to delete. The system will display the message "Poof! It's gone." as a confirmation of deletion.

To exit the application, select option 5. The application will display the message "Bye bye! Have a lovely day!" and close.

## Troubleshooting

Problem: Colors are not displaying correctly on Windows

Solution: Ensure you are using Windows 10 or newer. If using an older version of Windows 10, enable Windows Terminal from the Microsoft Store which has better ANSI color code support. Alternatively, use ConEmu or Windows Terminal which support ANSI sequences.

Problem: Error message "gnat: command not found"

Solution: GNAT is not installed or has not been added to PATH. Check the GNAT installation by ensuring the executable file is in the bin folder. Add the GNAT bin folder to PATH through your system environment variables. Restart Terminal or Command Prompt after changing PATH.

Problem: Compilation fails with an error message

Solution: Ensure that the file named todo.adb is in the correct directory. Check the syntax of the Ada file. If it still fails, remove any existing object files by running gnatclean before recompiling.

Problem: Application runs but input is not responsive

Solution: Ensure you are typing the menu options correctly (1-5). Make sure you press Enter after typing your input. If Terminal appears to hang, try pressing Ctrl+C to stop and rerun the application.

Problem: Characters or symbols are not displaying correctly

Solution: Change the Terminal font to one that supports complete Unicode such as "Noto Color Emoji" or "Segoe UI Emoji". On Windows, use Windows Terminal from the Microsoft Store. On macOS, use iTerm2 with an appropriate font. On Linux, ensure your terminal is configured with UTF-8 encoding.

## File Structure

The GitHub repository contains the main file todo.adb which is the source code of the application. This file contains all the program logic including the Task_Item data type declaration, a vector to store the task list, and procedures for managing tasks.

## Contributing

To contribute to this project, fork the repository from https://github.com/VersaNexusIX/to-do-list. Create a new branch for your feature with a descriptive name. Commit your changes with clear and detailed messages. Push your branch to your forked repository. Create a Pull Request to the main branch of the original repository.

## License

This project is licensed under the MIT License. You are free to use, modify, and distribute this code with attribution to the original author.

## Contact and Support

If you find any bugs or have suggestions, please create an issue in the GitHub repository https://github.com/VersaNexusIX/to-do-list. Describe your problem or suggestion in detail and provide steps to reproduce the bug if applicable.

## Future Features Roadmap

Upcoming features include saving tasks to a database file, categorizing tasks by priority or time, notifications for upcoming tasks, cross-device synchronization, and different interface formats.

## Technologies Used

This application is built using the Ada programming language, known for its high safety and reliability standards. Ada uses the GNAT compiler which is part of the GNU Compiler Collection. For temporary data storage, Ada Containers Vectors is used for dynamic list management. ANSI escape sequences are used for color rendering and styling in the terminal.
