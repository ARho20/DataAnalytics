# Define known values
food_cost = 79.25
tax = 6.54
tip = 12.00

# Calculate total due 
total_due = food_cost + tax + tip

# str() cobnverts numbers into text so they can be printed with strings

# Original print statement 
# print("The total due is" + str(total due))

# More detailed print statements
print ("Food cost is " + str(food_cost)+ "and tax is" + str(tax))
print ("Tip is " + str(tip))
print ("Total due is " + str(total_due))

# Better formatting for tip
print("Tip is " + format(tip, "2f"))
