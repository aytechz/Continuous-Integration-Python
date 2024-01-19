# Continuous-Integration-Python

## Setting Up the Virtual Environment

Inside your project directory, create a virtual environment. This environment is a self-contained directory that contains a Python installation for a particular version of Python, plus a number of additional packages.

To create the virtual environment, run the following command in your terminal:

```bash
python -m venv venv
```

### Why Virtual Environment?

Creating virtual environments with venv is a valuable practice for any Python developer. It promotes cleaner project management, dependency isolation, and easier collaboration, leading to a more efficient and productive development workflow.

## Create requirements.txt

The requirements.txt file will list all Python dependencies for your project. Initially, this file can be empty or include any libraries you know you'll need. For example, if you know you'll use requests and numpy, your requirements.txt might look like this:

```
requests
numpy
```
You can create and edit this file using a text editor, or via command line:

```
echo "requests" > requirements.txt
echo "numpy" >> requirements.txt
```

## Install Dependencies:

With your virtual environment activated and your requirements.txt file in place, you can install your dependencies:

```
pip install -r requirements.txt
```

## Create a Makefile

A Makefile is used to define a set of tasks to be executed. Here's a simple Makefile that includes commands to set up the project, install dependencies, and activate the virtual environment.

Create a file named Makefile with the following content:

```
setup:
	python -m venv venv

install:
	pip install -r requirements.txt

activate:
	source venv/bin/activate

.PHONY: setup install activate
```
In Unix-like systems, you can use the make command followed by the target name to execute these tasks. For example, `make install` will run the install target.

## Structure of Your Project

Your project directory will look something like this:

<img width="609" alt="image" src="https://github.com/aytechz/Continuous-Integration-Python/assets/42274990/3da31656-e2ab-4812-ad39-96a9c2dd07d5">

## Adding your code:

Now, you can start adding your Python code to this structure. You might want to create a src directory for your source code, or a tests directory for tests.

## Additional Notes

- Always activate the virtual environment (source venv/bin/activate or venv\Scripts\activate on Windows) when you're working on your project.
- Update your requirements.txt file as you add or update dependencies.
- Make sure to test your Makefile commands to ensure they work as expected in your development environment.
- Consider using version control (like Git) to manage your project's development.

Feel free to ask if you need more specific details or have any questions about the process!

# .gitignore

**Python Virtual Environment:**
The venv directory (or whatever name you've given your virtual environment).

**Python Bytecode:**
Compiled Python files (.pyc, .pyo, __pycache__).

**Operating System Files:**
System files like .DS_Store (macOS), Thumbs.db (Windows), etc.

**Editor/IDE Specific Files:**
Configuration files specific to your IDE or text editor (e.g., .vscode, .idea).

**Python Distribution Artifacts:**
Build directories such as build/, dist/, *.egg-info.

**Other Commonly Ignored Files:**
Log files, cache, temporary files, etc.
