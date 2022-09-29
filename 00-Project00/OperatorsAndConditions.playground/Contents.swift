import UIKit

//	Arithmetic operators

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % firstScore

// Why can’t Swift add a Double to an Int?

let value: Int = 90000000000000001

// Why does Swift have a dedicated division remainder operator?

let weeks1 = 465 / 7
print("There are \(weeks1) weeks until the event.")

let weeks2: Double = 465 / 7
print("There are \(weeks2) weeks until the event.")

let weeks3 = 465 / 7
let days1 = 465 % 7
print("There are \(weeks3) weeks and \(days1) days until the event.")

let number = 465
let isMultiple = number.isMultiple(of: 7)


//	Operator overloading

let meaningOfLife = 42
let doubleMeaningOfLife = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

// Why does Swift need operator overloading?


//	Compound assignment operators

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"

// Why does Swift have compound assignment operators?


//	Comparison operators

let firstScore2 = 6
let secondScore2 = 4

firstScore2 == secondScore2
firstScore2 != secondScore2
firstScore2 >= secondScore2
firstScore2 <= secondScore2

"Taylor" >= "Swift"

// How does Swift let us compare many types of data?

let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Sizes: Comparable {
	case small
	case medium
	case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second)


//	Conditions

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
	print("Blackjack!")
}

if firstCard + secondCard == 21 {
	print("Blackjack!")
} else {
	print("Regular cards")
}

if firstCard + secondCard == 2 {
	print("Aces – lucky!")
} else if firstCard + secondCard == 21 {
	print("Blackjack!")
} else {
	print("Regular cards")
}

// What’s the difference between if and else if?
let score1 = 9001

if score1 > 9000 {
	print("It's over 9000!")
}

if score1 > 9000 {
	print("It's over 9000!")
}

if score1 <= 9000 {
	print("It's not over 9000!")
}

if score1 > 9000 {
	print("It's over 9000!")
} else {
	print("It's not over 9000!")
}

if score1 > 9000 {
	print("It's over 9000!")
} else {
	if score1 == 9000 {
		print("It's exactly 9000!")
	} else {
		print("It's not over 9000!")
	}
}

if score1 > 9000 {
	print("It's over 9000!")
} else if score1 == 9000 {
	print("It's exactly 9000!")
} else {
	print("It's not over 9000!")
}


//	Combining conditions

let age1 = 12
let age2 = 24

if age1 > 18 && age2 > 18 {
	print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
	print("At least one is over 18")
}

// How to check multiple conditions

let isOwner = true
let isAdmin = true

if isOwner == true || isAdmin == true {
	print("You can delete this post")
}

let isEditingEnabled = true

if isOwner == true && isEditingEnabled || isAdmin == true {
	print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
	print("You can delete this post")
}

if isOwner == true && (isEditingEnabled || isAdmin == true) {
	print("You can delete this post")
}

if (isOwner == true && isEditingEnabled) || isAdmin == true {
	print("You can delete this post")
}


//	The ternary operator

let firstCard1 = 11
let secondCard1 = 10
print(firstCard1 == secondCard1 ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
	print("Cards are the same")
} else {
	print("Cards are different")
}

// When should you use the ternary operator in Swift?

let isAuthenticated = true
print(isAuthenticated ? "Welcome!" : "Who are you?")

if isAuthenticated {
	print("Welcome")
} else {
	print("Who are you?")
}


//	Switch statements

let weather1 = "sunny"

switch weather1 {
case "rain":
	print("Bring an umbrella")
case "snow":
	print("Wrap up warm")
case "sunny":
	print("Wear sunscreen")
default:
	print("Enjoy your day!")
}

// When should you use switch statements rather than if?


//	Range operators

let score2 = 85

switch score2 {
case 0..<50:
	print("You failed badly.")
case 50..<85:
	print("You did OK.")
default:
	print("You did great!")
}

// Why does Swift have two range operators?

let names = ["Piper", "Alex", "Suzanne", "Gloria"]

print(names[0])
print(names[1...3])
print(names[1...])


//	Operators and conditions summary
