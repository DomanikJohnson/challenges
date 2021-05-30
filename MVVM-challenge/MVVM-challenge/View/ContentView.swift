//
//  ContentView.swift
//  MVVM-challenge
//
//  Created by Domanik Johnson on 5/30/21.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var model = PizzaModel()
    
    var body: some View {
        VStack{
            
        
        List(model.arr) { elm in
            VStack(alignment: .leading) {
                Text(elm.name)
                    .font(.headline)
                    .foregroundColor(Color.red)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 2.0)
                HStack{
                    Text(elm.topping1)
                    Text(elm.topping2)
                    Text(elm.topping3)

                }
               
                
            }
         
            
        }
            Button("Add Pinapple") {
                for i in 0...model.arr.count-1 {
                    model.arr[i].topping1 = "Pinnaple"
                    
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
