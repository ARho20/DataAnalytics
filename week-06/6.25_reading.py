# Writing a File
with open ("student.txt", "w") as file :
    file.write("Alice\n")
    file.write("Bob\n")

# Reading from a file
with open ("students.txt", "r") as file :
    content = file.read()
    print(content)
