//
//  ContentView.swift
//  Reach7-challenge
//
//  Created by Domanik Johnson on 5/29/21.
//

import SwiftUI

struct ContentView: View {
    @State var arr:[Int] = []
    
    func addList() {
        var stored = 0
        
        repeat {
           stored = Int.random(in: 1...10)
            arr.append(stored)
        }while stored != 7
    }
    
    func addOne() {
        if( arr.count > 0) {
        for i in 0...arr.count - 1 {
            arr[i] += 1
        }
        }
    }
    
    func clear() {
        arr.removeAll()
    }
    var body: some View {
      
        VStack {
            
            List(arr, id: \.self) { elm in
                Text(String(elm))
            }
            
            HStack{
                Button("Add list") {
                    addList()
                }
            
                Button("Increase") {
                  addOne()
                }
                Button("Clear") {
                    clear()
                }
        
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
