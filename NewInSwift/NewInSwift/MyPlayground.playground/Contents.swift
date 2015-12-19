//: Playground - noun: a place where people can play

import Cocoa

//Enums
enum Animals {
    case Dog, Cat, Troll, Dragon
}

let a = Animals.Dragon
print(a)

//Associated Values in Enums
enum Either<T1, T2> {
    case First(T1)
    case Second(T2)
}

//Recursive Enums
enum Tree<T> {
    case Leaf(T)
    indirect case Node(Tree, Tree)
}

//do statement
do {
    let a = Animals.Troll
    print(a)
}

repeat {
let a = Animals.Dog
print(a)
} while(false)

//Define an option set
struct MyFontStyle: OptionSetType {
    let rawValue: Int
    static let Bold = MyFontStyle(rawValue: 1)
    static let Italic = MyFontStyle(rawValue: 2)
    static let Underline = MyFontStyle(rawValue: 4)
    static let Strikethrogh = MyFontStyle(rawValue: 8)
}
var myFont: MyFontStyle = []
myFont = [.Underline]
myFont = [.Bold, .Italic]
if myFont.contains(.Strikethrogh) {
    print("yes")
}

//funtion and method
class Widget {
    func save(name: String, encrypt: Bool) {}
    func save1(name name: String, _ encrypt: Bool) {}
}
let widget = Widget()
widget.save("go", encrypt: true)

//diagnostics
struct MyCoordinates {
    var points: [CGPoint]
    mutating func updatePoint() {
        points[20].x = 20
    }
}

//patten match
func process(json: AnyObject) -> Either<String,String> {
    guard let name = json["name"] as? String,
        let _ = json["year"] as? Int else {
            return .Second("bad input")
    }
    return .First(name)
}



