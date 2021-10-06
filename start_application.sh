#!/bin/bash

read -p "To start the program, type start. To see the Help message, type -h. To see a list of all recipes, type -a. To leave, type quit." ANSWER
case "$ANSWER" in
	start)
    		cd src
        	bundle install
        	ruby main.rb;;
	-h)
		cd src
    		bundle install
        	ruby main.rb -h;;
	-a)
		cd src
    		bundle install
        	ruby main.rb -a;;
	quit)
    		echo "Goodbye";;
	*)
		echo "Invalid Input";;
esac