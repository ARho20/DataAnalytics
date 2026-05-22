def greeting(name, city, hobby):
    return name, city, hobby

result = greeting ( 
    input ("Please enter your name: ")
    input ("Please eneter your city: ")
    input ("Please enter your hobby: ")
)

print(type(result))

print(f"Hello,{name}! You are from {city} and you enjoy {hobby}.)