import UIKit

var arr:[String] = ["d", "e", "o", "p"]
class Person {
    var name:String = ""
    
    func introduceMyself() {
        print("Hi my name is \(name)")
    }
    
}

class Chef: Person {

    override func introduceMyself() {
        print("Hi my name is \(name) Im a Chef")
    }
}

class Poet: Person {
    override func introduceMyself() {
        print("Hi my name is \(name) Im a Poet")
    }
}

class Astronaut: Person {
    override func introduceMyself() {
        print("Hi my name is \(name) Im a Astronaut")
    }
}


for i in 1...10 {
    var a:Person = Person()
    var b:Chef = Chef()
    var c:Poet = Poet()
    var d:Astronaut = Astronaut()
    
    
    var carr = [a, b, c, d]
    var testClass = carr.randomElement()
    testClass?.name = arr[Int.random(in: 1...arr.count-1)]
    testClass?.introduceMyself()
    
    
}

