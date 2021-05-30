//
//  ContentView.swift
//  Classes
//
//  Created by Domanik Johnson on 5/29/21.
//

import SwiftUI

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





struct ContentView: View {
    var str:[String] = ["Domanik","Johnson","King","Sally"]
    
    func CallClasses(){
        var counter = 1
        while counter < 11 {
            
        }
        
    }
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
