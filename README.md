# **Instructions**

## **Welcome!** 

- To use the 3 ingredient cookbook, you will first need to install Ruby, installation instructions can be found [here.](https://www.ruby-lang.org/en/documentation/installation/)

## **Installation steps**

1. Run the start_application script by typing ./start_application.sh into the terminal 
2. Select one of the following options, start, which will install all required gems and start the application. -h which will install all required gems as well as prompt you with the Help message. -a which will install all required gems and display a list of all the recipes. quit which will exit the script.

Design help documentation which includes a set of instructions which accurately describe how to use and install the application.

You must include:
- steps to install the application
- any dependencies required by the application to operate
- any system/hardware requirements

# **Provide full attribution to referenced sources (where applicable).**

# **Source Control Links**

### **Github** - https://github.com/Tia-Koenig
### **Trello** - https://trello.com/b/0aMsuTay/t1a3

# **Statement of purpose**

My application will solve the problem of not knowing what to cook, for example, you have chicken in the fridge to cook, but you want something easy, something that won't take a lot of ingredients, you can use my app to find an easy, three-ingredient recipe to cook with!.
Or, you've found a three-ingredient recipe online or heard of a three-ingredient recipe from a friend, with the add a recipe feature of my app, the user can quickly enter the recipe details as prompted by the application and save it with the other recipes on the database, this way it will be stored and easily accessible with the other three-ingredient recipes. 
So, you've tried a three-ingredient recipe. But, you don't like it, it contains an ingredient that you search for regularly, but you don't want it to pop up with the other recipes when you use find a recipe, so, for this problem, it's as easy as selecting the remove a recipe option, once selected, you'll be shown a list of the recipes with their ID numbers, its as easy as typing the ID number of the recipe you didn't like, and confirming its the correct recipe to delete, and it's gone!
I wanted to develop an app like this because I always wonder what to cook, and I often want something easy with little effort.

My target audience would be anyone! The recipes are only three ingredients, so people of all ages can use the app and recipes.

# **Features**
### **Find a recipe**
This feature allows the user to input up to 3 ingredients to search the recipe database, once an ingredient or ingredients are inputted, the application will search the recipe database for recipe ingrdients that match the input, once it does it will display the recipes to the user
### **Add a recipe**
This feature allows the user to add their own 3 ingredient recipe, the application will ask the user for the title of the recipe, the recipe directions, 3 ingredients, their quantities and their unit of measure, once it has this information it is then put into the recipe database (csv file), the user will then be able to find and delete the recipe.
### **Remove a recipe**
This feature allows the user to remove a recipe, when they select this option, the application will show all recipe ID's and their title, they will then be prompted to input the recipe ID that they want to remove, once they input the ID the application will ask if they're sure they want to delete the recipe and will show the ID and title of the recipe they are deleting and will prompt the user to input yes or no, if no it will exit and return to the recipe menu, if yes it will output a message to let the user know the recipe has been deleted.

# **Outline**

- When the user opens the application, they will see an option menu, when the help selection is selected, it will open the help page where there are instructions on how to use each feature and what each feature/option does.
- The user will be prompted by an output on how to use the feature, for exqmple, when they select "Find a recipe" the application will ask them "What ingredient do you have to cook with?" so the user would then type their ingredient and press enter on their keyboard, the application will then ask them if they have any other ingredients and ask them to input yes or no, if yes they will be asked to add in another ingredient, if no, the application will output the recipes that include their ingredient.
- In all features, there is an error message that will show if, for example, the user inputs noo instead of no, the application will output "Invalid input, please enter either yes or no" and then prompt them with the previous question again.


# **Flowchart**
Develop a diagram which describes the control flow of your application. Your diagram must:
- show the workflow/logic and/or integration of the features in your application for each feature.
- utilise a recognised format or set of conventions for a control flow diagram, such as UML.

# ****
Develop an implementation plan which:
- outlines how each feature will be implemented and a checklist of tasks for each feature
- prioritise the implementation of different features, or checklist items within a feature
- provide a deadline, duration or other time indicator for each feature or checklist/checklist-item

Utilise a suitable project management platform to track this implementation plan

> Your checklists for each feature should have at least 5 items.


