total  = 0
count = 0

print("Enter positive numbers one at a time.")
print("Enter a negative number to stop.")

num = float(input("Enter a number:"))

while num >= 0:
    total += num
    count += 1
    num = float(input("Enter a number:"))

print(f"Numbers entered : {count}")
print(f"Sum  : {total:.2f}")