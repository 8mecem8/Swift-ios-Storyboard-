import Foundation

var greeting = "Hello, playground"

print(greeting,terminator: " ")
print("\(greeting)\n")


for arg in 1...2
{
    print("argument in for in loop is \(arg)\n")
}


for week in 1...2 {
  print("Week: \(week)")

// inner loop
    for day in 1...7 where  day != 5 {
      print("  Day:  \(day)")
  
   }

// line break after iteration of outer loop
   print("")
}



let randomNumber = Int.random(in: 990...999)
print(type(of:randomNumber))
print(randomNumber)


struct exampleStruct
{
    let zurna: Any = 23
    let kurna: Any = "asd"
}

print(exampleStruct())
