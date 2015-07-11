//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var myVarible = 42

myVarible = 50

let myConstent = 42

let implicitInteger = 70

let implicitDouble = 70.0

let explicitDouble : Double = 70

let explicitFloat : Float = 10

let label = "The width is "

let width = 94

let widthLabel = label + String(width)

let apples = 3

let oranges = 5

let appleSummray = "I have \(apples)"

let fruitSummary = "I have \(apples + oranges) pieces of fruit."

var shoppingList = ["catfish", "water", "tulips", "bule paint"]

shoppingList[1] = "bottole of water"

var occupations = [
    "Malcolm" : "Captain",
    "Kaylee" : "Mechanic"
]

occupations["Jayne"] = "Public Relations"

let emptyArray = [String]()


let emptyDictionary = Dictionary<String, Float>()

shoppingList = []

let individualScores = [75, 43 , 103, 87, 12]

var teamScore = 0

for score in individualScores {
    if score > 50 {
        teamScore += 3
    } else {
        teamScore += 1
    }
}

teamScore

var optionalString: String? = "Hello"
optionalString == nil

var optionalName: String? = "John Appleseed"
var greeting = "Hello"
if let name = optionalName {
    greeting = "Hello, \(name)"
}


protocol ExampleProtocol {
    var simpleDescription: String { get }
    
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += "  Now 100% adjusted."
    }
}

var a = SimpleClass()

a.adjust()

let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple Structure"
    
    mutating func adjust() {
        simpleDescription += "  (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()

let bDescription = b.simpleDescription

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}

7.simpleDescription

let protocolValue: ExampleProtocol = a

protocolValue.simpleDescription

func anyCommonElements <T, U where T: SequenceType,U: SequenceType,T.Generator.Element: Equatable,T.Generator.Element == U.Generator.Element> (lhs: T, rhs: U) -> Bool {
    for lhsItem in lhs {
        for rhsItem in rhs {
            if lhsItem == rhsItem {
                return true
            }
        }
    }
    return false
}

anyCommonElements([1,2,3], [3])

let languageName = "Swift"

//languageName = "Swift ++"

println(languageName)

let minValue = UInt8.min

let maxValue = UInt8.max


let decimalInteger = 17

let binaryInteger = 0b10001






let twoThousand: UInt16 = 2_000

let one: UInt8 = 1

let twoThousandAndOne = twoThousand + UInt16(one)

typealias AudioSample = UInt16

//var aaaa = AudioSample.min


let http404Error = (404,"NotFound")

let (statusCode, statusMessage) = http404Error

println("The status code is \(statusCode)")

println("The status message is \(statusMessage)")

let http200Status = (statusCode: 200, description:"NotFound")

println("The status code is \(http200Status.statusCode)")

println("The status Message is \(http200Status.description)")

let possibleNumber = "123"

let convertedNumber = possibleNumber.toInt()

if (convertedNumber != nil) {
    println(convertedNumber)
} else {
    println(convertedNumber)
}

if let con = convertedNumber {
    con
}

var serverResponceCode: Int? = 404

serverResponceCode = nil

var surveyAnswer: String?

let possibleString: String? = "An optional string."

println(possibleString!)

let assumedString: String! = "An implicitly unwrapped optional string."

println(assumedString)

let age = -3

assert(age >= 0, "a")

let (x, y) = (1, 2)

println(x)

println(y)

let str111: String = "aa" + "bb"

str111

let aNum = 3

let bNum = 2

aNum % bNum

for index in 1...5 {
    println(index)
}

let names = ["a", "b", "c", "d"]
let count = names.count
for i in 0..count {
    println(i)
}












































































