//
//  ContentView.swift
//  Player-card-challenge
//
//  Created by Domanik Johnson on 5/29/21.
//

import SwiftUI

struct ContentView: View {
  
    @State var cardData = "none"
   
   func Generate() {
       // Holds Struct of Card
      @State var deck:[Card] = []
      @State var compareDeck:[String] = []
    
       var arr = [1,2,3,4,5,6,7,8,9,10,11,12,13]
       var strarr = ["Spades", "Clubs", "Hearts", "Diamonds"]
       
       // new card instance
       var newInst = Card()
       
       // getting random values
       var randCard = Int.random(in: 0...arr.count - 1)
       var randSuite = strarr[Int.random(in: 0...strarr.count - 1)]
       // Setting newInst
       newInst.cardNum = randCard
       newInst.suite = randSuite
       
     //String representation of struct
      var newString = String(newInst.cardNum) + "/" + String(newInst.suite)
    
    if ( compareDeck.contains(newString)) {
        cardData = "Generated Already"
    }else{
        compareDeck.append(newString)
        cardData = "Generated \(newString)"
    }
   
    for i in compareDeck {
        print( i)
    }
   }




    
    var body: some View {
        VStack{
            Text(String(cardData)).font(.largeTitle).padding(.bottom)
            HStack {
             
                Button("Button 1") {
                    Generate()
                }
                Button("Button 2") {
                    print("hello")
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
