import UIKit

//	For loops

let count = 1...10

for number in count {
	print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
	print("\(album) is in Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
	print("play ")
}

//Why does Swift use underscores with loops?

let names1 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for name in names1 {
	print("\(name) is a secret agent")
}

let names2 = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

for _ in names2 {
	print("[CENSORED] is a secret agent!")
}


//	While loops

var number = 1

while number <= 20 {
	print(number)
	number += 1
}

print("Ready or not, here I come!")

//When should you use a while loop?


//	Repeat loops

var number1 = 1

repeat {
	print(number1)
	number1 += 1
} while number1 <= 20
			
print("Ready or not, here I come!")

while false {
	print("This is false")
}

repeat {
	print("This is false")
} while false

//When should you use a repeat loop?
let numbers1 = [1, 2, 3, 4, 5]
let random1 = numbers1.shuffled()

let numbers2 = [1, 2, 3, 4, 5]
var random2 = numbers2.shuffled()

while random2 == numbers2 {
	random2 = numbers2.shuffled()
}

let numbers3 = [1, 2, 3, 4, 5]
var random3: [Int]

repeat {
	random3 = numbers3.shuffled()
} while random3 == numbers3


//	Exiting loops

var countDown = 10

while countDown >= 0 {
	print(countDown)
	countDown -= 1
}

print("Blast off!")

countDown = 10

while countDown >= 0 {
	print(countDown)
	if countDown == 4 {
		print("I'm bored. Let's go now!")
		break
	}
	
	countDown -= 1
}

//Why would you want to exit a loop?

let scores = [1, 8, 4, 3, 0, 5, 2]

var count2 = 0

for score in scores {
	if score == 0 {
		break
	}
	
	count2 += 1
}

print("You had \(count2) scores before you got 0.")


//	Exiting multiple loops

for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print("\(i) * \(j) is \(product)")
	}
}

outerLoop: for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print("\(i) * \(j) is \(product)")
	}
}

outerLoop: for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print ("\(i) * \(j) is \(product)")
		
		if product == 30 {
			print("It's bullseye!")
			break outerLoop
		}
	}
}

//Why does Swift have labeled statements?

let options = ["up", "down", "left", "right"]

let secretCombination = ["up", "up", "right"]

for option1 in options {
	for option2 in options {
		for option3 in options {
			print("In loop")
			let attempt = [option1, option2, option3]

			if attempt == secretCombination {
				print("The combination is \(attempt)!")
			}
		}
	}
}

print("")

outerLoop: for option1 in options {
	for option2 in options {
		for option3 in options {
			print("In loop")
			let attempt = [option1, option2, option3]

			if attempt == secretCombination {
				print("The combination is \(attempt)!")
				break outerLoop
			}
		}
	}
}


//	Skipping items

for i in 1...10 {
	if i % 2 == 1 {
		continue
	}
	print(i)
}

//When to use break and when to use continue


//	Infinite loops

var counter = 0

while true {
	print(" ")
	counter += 1
	
	if counter == 273 {
		break
	}
}

//Why would you want to make an infinite loop?

