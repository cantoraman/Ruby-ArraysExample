# Exercise A

# Given the following data structure:
$stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]

def prntr()
  puts ""
  puts $stops
end

# Complete these tasks:
prntr()
#1. Add `"Edinburgh Waverley"` to the end of the array
$stops.push("Edinburgh Waverley")
prntr()
#2. Add `"Glasgow Queen St"` to the start of the array
$stops.unshift("Glasgow Queen St")
prntr()
#3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
i=0
for x in $stops
  if (x == "Falkirk High")
    break
  else i+=1
  end
end
$stops.insert((i+1), "Polmont")
prntr()
#4. Work out the index position of `"Linlithgow"`
i=0
for x in $stops
  if (x == "Linlithgow")
    break
  else i+=1
  end
end
puts "Index of Linlitgow is #{i}"
#5. Remove `"Livingston"` from the array using its name
$stops.delete("Livingston")
prntr()
#6. Delete `"Cumbernauld"` from the array by index
i=0
for x in $stops
  if (x == "Cumbernauld")
    $stops.delete_at(i)
    break
  else i+=1
  end
end
prntr()
#7. How many stops there are in the array?
i=0
puts "\nThere are #{$stops.length} stops in this array"
#8. How many ways can we return `"Falkirk High"` from the array?
def stopreturner(stoptoreturned)
i=0
  for x in $stops
    if (x == stoptoreturned)
      return $stops[i]
    else i+=1
    end
  end
end
p stopreturner("Falkirk High")

#9. Reverse the positions of the stops in the array
puts ""
p $stops.reverse
puts ""
#10. Print out all the stops using a for loop

i=0
  for x in $stops
    p x
    i+=1
  end
# Exercise B

# Given the following data structure:

users = {
  "Jonathan" => {
    :twitter => "jonnyt",
    :lottery_numbers => [6, 12, 49, 33, 45, 20],
    :home_town => "Stirling",
    :pets => [
    {
      :name => "fluffy",
      :species => "cat"
    },
    {
      :name => "fido",
      :species => "dog"
    },
    {
      :name => "spike",
      :species => "dog"
    }
  ]
  },
  "Erik" => {
    :twitter => "eriksf",
    :lottery_numbers => [18, 34, 8, 11, 24],
    :home_town => "Linlithgow",
    :pets => [
    {
      :name => "nemo",
      :species => "fish"
    },
    {
      :name => "kevin",
      :species => "fish"
    },
    {
      :name => "spike",
      :species => "dog"
    },
    {
      :name => "rupert",
      :species => "parrot"
    }
  ]
  },
  "Avril" => {
    :twitter => "bridgpally",
    :lottery_numbers => [12, 14, 33, 38, 9, 25],
    :home_town => "Dunbar",
    :pets => [
      {
        :name => "monty",
        :species => "snake"
      }
    ]
  }
}

# Complete these tasks:

#1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
puts ""
puts users["Jonathan"][:twitter]

#2. Get Erik's hometown

puts users["Erik"][:home_town]

#3. Get the array of Erik's lottery numbers

p users["Erik"][:lottery_numbers]

#4. Get the type of Avril's pet Monty

p users["Avril"][:pets][0][:species]

#5. Get the smallest of Erik's lottery numbers

p users["Erik"][:lottery_numbers].sort[0]

#6. Return an array of Avril's lottery numbers that are even

users["Avril"][:lottery_numbers].each { |x|
      if x%2==0
        p x
      end
}

#7. Erik is one lottery number short! Add the number `7` to be included in his lottery numbers

users["Erik"][:lottery_numbers].push(7)
p users["Erik"][:lottery_numbers]
#8. Change Erik's hometown to Edinburgh

users["Erik"][:home_town]="Edinburgh"
p users["Erik"][:home_town]

#9. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets].push({name: "Fluffy", species: "dog"})
puts users["Erik"][:pets]
#10. Add another person to the users hash
users["Can"] = {
  :twitter => "cantoraman",
  :lottery_numbers => [10, 4, 36, 48, 29, 15],
  :home_town => "Ankara",
  :pets => [
    {
      :name => "Viserion",
      :species => "Dragon"
    }
  ]
}
puts ""
puts users["Can"]
# Exercise C

# Given the following data structure:

united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  },
  {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  },
  {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]

# Complete these tasks:

#1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
united_kingdom[1][:capital] = "Cardiff"
puts united_kingdom[1][:capital]

#2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
united_kingdom.push({name: "Northern Ireland", population:1811000, capital: "Belfast"})
puts united_kingdom[3]
#3. Use a loop to print the names of all the countries in the UK.
for x in united_kingdom
  puts x[:name]
end

#4. Use a loop to find the total population of the UK.
totpop=0
for x in united_kingdom
  totpop+=x[:population]
end

puts totpop

#Cheers!
