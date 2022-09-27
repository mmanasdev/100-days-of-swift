import UIKit

//	Arrays

let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]
beatles[1]

//Why does Swift have arrays?


//	Sets

let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "blue"])

//Why are sets different from arrays in Swift?


//	Tuples

var name = (first: "Taylor", second: "Swift")
name.0
name.first

//How are tuples different from arrays in Swift?
var website = (name: "Apple", url: "www.apple.com")
var website2 = ["Apple", "www.apple.com"]
var person = (name: "Paul", age: 40, isMarried: true)


//	Arrays vs sets vs tuples
let address = (house: 55, street: "Taylor Swift Avenue", city: "Nashville")
let set1 = Set(["aavark", "astronaut", "azalea"])
let phytons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

//When should you use an array, a set, or a tuple in Swift?


//	Dictionaries

let heights = [
	"Taylor Swift": 1.78,
	"Ed Sheeran": 1.73
]
heights["Taylor Swift"]

//Why does Swift have dictionaries as well as arrays?


//	Dictionary default values

let favouriteIceCream = [
	"Paul": "Chocolate",
	"Sophie": "Vanilla"
]
favouriteIceCream["Paul"]
favouriteIceCream["Charlotte"]
favouriteIceCream["Charlotte", default: "Unknown"]

//Why does Swift have default values for dictionaries?


//	Creating empty collections

var teams = [String: String]()
teams["Paul"] = "Red"

var results1 = [Int]()

var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results2 = Array<Int>()

//Why would you want to create an empty collection?


//	Enumerations

let result = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
	case success
	case failure
}

let result4 = Result.failure

//Why does Swift need enums?


//	Enum associated values

enum Activity {
	case bored
	case running
	case talking
	case singing
}
enum ActivityV {
	case bored
	case running(destination: String)
	case talking(topic: String)
	case singing(volume: Int)
}

let talking = ActivityV.talking(topic: "Football")

//Why would you want to associate a value with an enum case?

enum Weather {
	case sunny
	case windy(speed: Int)
	case rainy(chance: Int, amount: Int)
}

enum Weather2 {
	case sunny
	case lightBreeze
	case aBitWindy
	case quiteBlusteryNow
	case nowThatsAStrongWind
	case thisIsSeriousNow
	case itsAHurricane
}


//	Enum raw values

enum Planet: Int {
	case mercury
	case venus
	case earth
	case mars
}

let planet1 = Planet(rawValue: 2)

enum Planet1: Int {
	case mercury = 1
	case venus
	case earth
	case mars
}

let planet2 = Planet1(rawValue: 2)

//Why do Swift’s enums have raw values?

