//
//  PizzaDetailView.swift
//  ParseJson-challenge
//
//  Created by Domanik Johnson on 5/31/21.
//

import SwiftUI

struct PizzaDetailView: View {
    
    // Model of pizza
    var pizza:Pizza
    
    var body: some View {
        VStack {
            ScrollView {
                Image(pizza.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width:100, height:100, alignment: .center)
                    .clipped()
               
                    Text(pizza.name)
                        .font(.headline)
                HStack{
                    ForEach(pizza.toppings, id: \.self) { elm in
                        Text(elm)
                    }
                }
                
            }.navigationBarTitle(pizza.name)
        }
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        var model = PizzaModel()
        PizzaDetailView(pizza: model.pizzaOrder[0])
    }
}
