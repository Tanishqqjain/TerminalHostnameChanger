#!/bin/bash
echo "*****Terminal Default HostName/UserName Changer*****"
echo "1.Macbook" 
echo "2.Linux"
echo -n "Select your OS (1 or 2) : "
read os
echo ""
echo "Select your preference : "
echo "1.Reset Symbol to default"
echo "2.Edit Symbol"
read choice
if [ $choice == 1 ]
then
	if [ $os == 1 ]
	then
		sed -i '' '/^export PS1=/d' ~/.bash_profile
	else
		sed -i '/^export PS1=/d' ~/.bash_profile
	fi
else
	echo "Enter the symbol (Replace $ -> symbol) : "
	read symbol
	if [ $os == 1 ]
	then
		echo "You are on Macbook"
		sed -i '' '/^export PS1=/d' ~/.bash_profile
		echo 'export PS1="'$symbol '"' >> ~/.bash_profile
		source ~/.bash_profile
	else
		echo "You are on Linux"
		sed -i '/^export PS1=/d' ~/.bashrc
		echo 'export PS1="'$symbol '"' >> ~/.bashrc
		source ~/.bashrc
	fi
fi
echo "Restart the Terminal to complete the action..."


