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
        
        ScrollView {
            VStack(alignment: .leading) {
            ForEach(model.pizzaOrder) { pizza in
                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        Image(pizza.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .clipped()
                        VStack(alignment: .leading) {
                            Text(pizza.name)
                              .multilineTextAlignment(.trailing)
                            HStack{
                            Text(pizza.toppings[0])
                            Text(pizza.toppings[1])
                            Text(pizza.toppings[2])
                            }
                            .font(.caption)
                        }
                    }
                    
                }
                
            }
            
        }
        }
        
//        VStack {
//            List(model.pizzaOrder) { elm in
//                VStack(alignment: .leading) {
//                    HStack(alignment: .top) {
//                        Image(elm.image)
//                            .resizable()
//                            .scaledToFill()
//                            .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                            .clipped()
//                        VStack(alignment: .leading) {
//
//
//                            Text(elm.name)
//                                .multilineTextAlignment(.trailing)
//
//                            HStack{
//                                Text(elm.toppings[0])
//                                Text(elm.toppings[1])
//                                Text(elm.toppings[2])
//                            }
//                            .font(.caption)
//                        }
//
//
//                    }
//
//
//
//
//                }
//
//            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
