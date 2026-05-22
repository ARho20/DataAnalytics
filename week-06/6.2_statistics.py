import statistics

def analyze_sales(sales)
    
    average = statistics.mean(sales)
    middle = statistics.median(sales)
    common = statistics.mode(sales)
    stand_dev = statistics.standev(sales)

    total = sum(sales)
    highest = max(sales)
    lowest = min(sales)

    return average, middle, common, stand_dev, total, highest, lowest

analyst = input ("Analyst name: ")
region = input("Region: ")

sales = []

print ("Enter sales for 7 days")

for i in range (7):
    sale = float (input(f''))



