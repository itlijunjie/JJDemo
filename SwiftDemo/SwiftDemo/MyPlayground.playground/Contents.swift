//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        default:
            return String (self.rawValue)
        }
    }
}

let ace = Rank.Ace

let aceRawCalue = ace.rawValue


