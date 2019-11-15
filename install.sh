if [ -f "/usr/bin/apt" ]; then
	sudo apt install make -y
        else 
          echo ""
fi
if [ -f "/usr/bin/pacman" ]; then
	sudo pacman -S --needed make 
		else 
            echo "make instaled"
fi
if [ -f "~/vscode_colordetector_config_linux" ]; then
    echo "Extensions Install"
        else
            cd ~/vscode_colordetector_config_linux/;
            cp -r .platformio ~/;
            code --install-extension platformio.platformio-ide
            code --install-extension ms-vscode.cpptools
fi

if [ -e "~/Documents/PlatformIO/Projects" ]; then
    cd ~
    mkdir ~/Documents/PlatformIO;
    mkdir ~/Documents/PlatformIO/Projects;
        else
            echo "Project Folder Create"
fi

if [ -e "~/Documents/PlatformIO/Projects/color_detector" ]; then
    echo "existe"
        else
            cd ~/Documents/PlatformIO/Projects;
            sudo rm -r color_detector
            git clone https://github.com/felipecaninnovaes/color_detector.git;
            echo "finish"
fi
