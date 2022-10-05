import UIKit

//		FUNCTIONS

//	Writing functions

func printHelp() {
	let message = """
	Welcome to MyApp!

	Run this app inside a directory of images and
	MyApp will resize them all into thumbnails
	"""
	print(message)
}

printHelp()

// What code should be put in a function?


//	Accepting parameters

func square(number: Int) {
	print(number * number)
}

square(number: 8)

// How many parameters should a function accept?


//	Returning values

func square2(number: Int) -> Int {
	return number * number
}
 let result2 = square2(number: 8)

print(result2)

// When is the return keyword not needed in a Swift function?


//	Parameter labels

func sayHello(to name: String) {
	print("Hi, \(name)!")
}

sayHello(to: "Taylor")

// How can you return two or more values from a function?

func getUser() -> [String] {
	return ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])

func getUser2() -> [String: String] {
	["first": "Taylor", "last": "Swift"]
}

let user2 = getUser2()
print(user2["first"])

func getUser3() -> (first: String, last: String) {
	(first: "Taylor", last: "Swift")
}

let user3 = getUser3()
print(user3.first)


//	Omitting parameter labels

func greet(_ person: String) {
	print("Hello, \(person)")
}

greet("Taylor")

// Why does Swift use parameter labels?

func setReactorStatus(primaryActive: Bool, backupActive: Bool, isEmergency: Bool) {
	// code here
}

setReactorStatus(primaryActive: true, backupActive: true, isEmergency: false)

func setAge(for person: String, to value: Int) {
	print("\(person) is now \(value)")
}

setAge(for: "Paul", to: 40)

//setAge(person: "Paul", value: 40)

//	Default parameters

func greet3(_ person: String, nicely: Bool = true) {
	if nicely {
		print("Hello, \(person)!")
	} else {
		print("Oh no, it's \(person) again...")
	}
}

greet3("Taylor")
greet3("Taylorr", nicely: false)

// When to use default parameters for functions


//	Variadic functions

func square4(numbers: Int...) {
	for number in numbers {
		print("\(number) squared is \(number * number)")
	}
}

square4(numbers: 1, 2, 3, 4, 5)

// When to use variadic functions


//	Writing throwing functions

enum PasswordError: Error {
	case obvious
}

func checkPassword(_ password: String) throws -> Bool {
	if password == "password" {
		throw PasswordError.obvious
	}
	return true
}

// When should you write throwing functions?


//	Running throwing functions

do {
	try checkPassword("password")
	print("That password is good!")
} catch {
	print("You can't use that password.")
}

// Why does Swift make us use try before every throwing function?


//	inout parameters
func doubleInPlace(number: inout Int) {
	number *= 2
}

var myNum = 2
doubleInPlace(number: &myNum)

// When should you use inout parameters?
