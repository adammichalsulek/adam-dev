import os
directory_path = 'D:\path\pathname'

# List of all the files in the directory
files = os.listdir(directory_path)

# Print the list of files
for file in files:
    print(file)