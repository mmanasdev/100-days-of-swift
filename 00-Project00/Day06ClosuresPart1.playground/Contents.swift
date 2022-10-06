import UIKit

//		Day 6: Closures, part one

//	Creating basic closures

let driving = {
	print("I'm driving in my car")
}

driving()

// What the heck are closures and why does Swift love them so much?


//	Accepting parameters in a closure

let driving2 = { (place: String) in
	print("I'm going to \(place) in my car")
}

driving2("London")

// Why are Swift’s closure parameters inside the braces?

func pay(user: String, amount: Int) {
	// code
}

let payment = { (user: String, amount: Int) in
	// code
}


//	Returning values from a closure

let driving4 = { (place: String) in
	print("I'm going to \(place) in my car")
}

let drivingWithReturn = { (place: String) -> String in
	return "I'm going to \(place) in my car"
}

let drivingWithReturn1 = drivingWithReturn("London")

print(drivingWithReturn1)

// How do you return a value from a closure that takes no parameters?

let payment2 = { (user: String) in
	print("Paying \(user)…")
}

let payment3 = { (user: String) -> Bool in
	print("Paying \(user)…")
	return true
}

let payment4 = { () -> Bool in
	print("Paying an anonymous person…")
	return true
}

let payy = payment4()


//	Closures as parameters

let driving5 = {
	print("I'm driving in my car")
}

func travel(action: () -> Void) {
	print("I'm getting ready to go.")
	action()
	print("I arrived!")
}

travel(action: driving5)

// Why would you want to use closures as parameters?


//	Trailing closure syntax

func travel2(action: () -> Void) {
	print("I'm getting ready to go.")
		action()
		print("I arrived!")
}

travel2() {
	print("I'm driving in my car")
}

// Why does Swift have trailing closure syntax?

func animate(duration: Double, animations: () -> Void) {
	print("Starting a \(duration) second animation…")
	animations()
}

animate(duration: 3, animations: {
	print("Fade out the image")
})

animate(duration: 3) {
	print("Fade out the image")
}

