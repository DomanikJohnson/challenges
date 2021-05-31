//
//  ContentView.swift
//  MVVM-challenge
//
//  Created by Domanik Johnson on 5/30/21.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var model = PizzaModel()
    
    @State var arr:[String]?
    @State var data = "none"
    
    
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
            HStack {
                Text(data)
                Button("Add Pinapple") {
                    arr = [String]()
                    arr?.append(<#T##newElement: String##String#>)
                }
                
                Button("BTN 1") {
                      arr = nil
                    }
                Button("BTN 2") {
                    if var arrs = arr {
                        arrs.append("This is one")
                        arrs.append("This is two")
                        arrs.append("This is three")
                        data = "addded"

                    }else {
                        arr
                    }
                            
                }
                
            
            }}
            }
        }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
