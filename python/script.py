from random import randint
try:
  from googlesearch import search
except ImportError:
  print("no module named 'google', try 'pip3 install google' before running again")

query = 'ramen recipe'
option = randint(0, 15)
result = next(search(query, num=1, start=option, stop=option))

print('I found this ramen recipe for you.  Looks tasty!')
print(result)
