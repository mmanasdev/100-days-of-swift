import UIKit



//	Using closures as parameters when they accept parameters

func travel(action: (String) -> Void) {
	print("I'm getting ready to go.")
	action("London")
	print("I arrived!")
}

travel { (place: String) in
	print("I'm going to \(place) in my car")
}

// When would closures with parameters be used as parameters?

let changeSpeed = { (speed: Int) in
	print("Changing speed to \(speed)kph")
}

func buildCar(name: String, engine: (Int) -> Void) {
	// build the car
}


//	Using closures as parameters when they return values

func travel2(action: (String) -> String) {
	print("I'm getting ready to go.")
	let description = action("London")
	print(description)
	print("I arrived!")
}

travel2 { (place: String) -> String in
	return "I'm going to \(place) in my car"
}

// When would you use closures with return values as parameters to a function?


//	Shorthand parameter names

func travel3(action: (String) -> String) {
	print("I'm getting ready to go.")
	let description = action("London")
	print(description)
	print("I arrived!")
}

travel3 { place -> String in
	return "I'm going to \(place) in my car"
}

travel3 {
	"I'm going to \($0) in my car"
}

// When should you use shorthand parameter names?


//	Closures with multiple parameters

func travel4(action: (String, Int) -> String) {
	print("I'm getting ready to go.")
	let description = action("London", 60)
	print(description)
	print("I arrived!")
}

travel4 { return "I'm going to \($0) at \($1) miles per hour" }

// How many parameters can a closure take?


//	Returning closures from functions

func travel5() -> (String) -> Void {
	return {
		"I'm going to \($0)"
	}
}

let result = travel5()
result("London")
let result2 = travel5()("London")


//	Capturing values

func travel6() -> (String) -> Void {
	return {
		print("I'm going to \($0)")
	}
}
let resultt = travel6()
resultt("London")

func travel7() -> (String) -> Void {
	var counter = 1

	return {
		print("\(counter). I'm going to \($0)")
		counter += 1
	}
}

// Why do Swift’s closures capture values?
