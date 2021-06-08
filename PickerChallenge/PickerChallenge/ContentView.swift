//
//  ContentView.swift
//  PickerChallenge
//
//  Created by Domanik Johnson on 6/7/21.
//

import SwiftUI

struct ContentView: View {
    
    var location = ["Mexico", "Atlantic City", "Florida",
    "Richmond", "Virginia Beach"]
    
    @State private var favoriteColor = 0
    var colors = ["1PM", "2PM", "3PM", "4PM"]
    @State var loc = 0
  
    
    
    var body: some View {
        VStack {
            Text("Ottimo Rostrane")
                .bold()
                .font(.largeTitle)
            Spacer()
            
            HStack {
                Text("Location")
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                Text(location[loc])
                Text(colors[favoriteColor])
            }
            
            Spacer()
            Picker("Location", selection: $loc) {
                ForEach(0..<location.count, id: \.self) {
                    Text(self.location[$0])
                }
            }
            Spacer()
            Picker("Pick a time", selection: $favoriteColor) {
                ForEach(0..<colors.count, id: \.self) {
                    Text(self.colors[$0])
                }
            } .pickerStyle(SegmentedPickerStyle())
            
            Spacer()
            
            Button(action: {
                var rand1 = Int.random(in: 0..<colors.count)
                var rand2 = Int.random(in: 0..<location.count)
                
                
                favoriteColor =  rand1
                loc = rand2
            }, label: {
                Text("Random For ")
            })
            
            Spacer()

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
