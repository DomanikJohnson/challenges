//
//  ContentView.swift
//  ParseJson-challenge
//
//  Created by Domanik Johnson on 5/30/21.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        VStack {
            List(model.pizzaOrder) { elm in
                VStack(alignment: .leading) {
                Text(elm.name)
            
                    HStack(alignment: .center) {
                        Text(elm.toppings[0])
                        Text(elm.toppings[1])
                        Text(elm.toppings[2])
                
                    }
                     
                
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
