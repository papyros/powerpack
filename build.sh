#!/bin/bash
function options(){
	echo "(1) Build Extra Packages"
	echo "(2) Commit to OS Tree"
	echo "(3) Create Image"
	echo "(4) vbox hard drive - requires 4 to successfully finish"
}

function doStuff(){
	answer=0
	read -p "Choose " answer
	echo $answer
	case $answer in
		1)
			read -p "Building Extra Packages. Press Enter."
			./bin/powerpack-build
			;;
		2)
			read -p "Committing to OS Tree. Press Enter."
			./bin/powerpack-commit gnome
			;;
		3)
			read -p "Creating Images. Press Enter."
			./bin/powerpack-pack gnome
			;;
		4)
			read -p "Creating vbox hard drive. Press Enter"
			VBoxManage convertfromraw -format VDI build/gnome/gnome.img build/gnome/gnome.vdi
			;;
	esac			
}

while :
do
	options
	doStuff
done
