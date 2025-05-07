# Dovahkiin-Desktop-Status
This Conky theme brings the status bars and aesthetic of The Elder Scrolls V: Skyrim to your Linux desktop. It displays key system information in a visually appealing and thematic way, including CPU usage (Health), GPU usage (Magicka), and RAM usage (Stamina), using reversed bars to mimic the in-game draining effect. It also features a Skyrim-style date display.

## Features:

* **Reversed Status Bars:** CPU, GPU, and RAM usage are represented by bars that visually "drain" as resources are used, mirroring the health, magicka, and stamina bars in Skyrim.
* **Skyrim Inspired Colors:** Uses red for Health (CPU), cyan/blue for Magicka (GPU), and green for Stamina (RAM), consistent with the game.
* **Fantasy Font:** Utilizes the "Tagesschrift-Regular" font for a thematic, older-style look.
* **Transparent Background:** Designed to blend seamlessly with your desktop wallpaper.
* **Skyrim Date:** Displays the date in the format used within Skyrim, powered by a separate shell script.
* **Time Display:** Shows the current time in HH:MM:SS format.

## Dependencies:

* **Conky:** You need to have Conky installed on your system (`conky-all` package on Debian/Ubuntu-based systems).
* **nvidia-smi:** Required to display GPU usage for NVIDIA graphics cards. If you have a different GPU, you'll need to adjust the configuration accordingly.
* **Tagesschrift-Regular Font:** This font needs to be installed on your system for the theme to display correctly. You can likely find it online through various font repositories.
* **Bash:** The `skyrim_date.sh` script requires a Bash shell.

## Installation:

1.  **Download the theme archive.**
2.  **Extract the contents** to a location of your choice (e.g., `/.conky_skyrim`).
3.  **Place the `conky.config` file** in your `~/.conky` directory (create it if it doesn't exist):
    ```bash
    mkdir -p /.conky
    mv /path/to/extracted/conky.config /.conky/
    ```
4.  **Place the `skyrim_date.sh` script** in your home directory (or another location you prefer) and make it executable:
    ```bash. I used it in my home directory and the conky .conf reflects this.
    mv /path/to/extracted/skyrim_date.sh /
    chmod +x /.skyrim_date.sh
    ```
5.  **Ensure the "Tagesschrift-Regular" font is installed** on your system.

## Running the Theme:

You can run the theme manually using the following command in your terminal:

```bash
conky -c /.conky/conky.config & disown

The & disown part ensures that Conky continues to run even after you close the terminal.

Autostart (Optional):
To have Conky start automatically when you log in, you can configure this in your desktop environment's settings. For KDE Plasma on Kubuntu:

Go to System Settings.
Navigate to Startup and Shutdown -> Autostart.
Click Add Program.
Enter conky -c /.conky/conky.config as the application to run.
Click OK.

