//
//  tabview.swift
//  Reach7-challenge
//
//  Created by Domanik Johnson on 6/1/21.
//

import SwiftUI

struct tabview: View {
    
    @State var tabIndex = 0
    
    var body: some View {
        // Create tabf view
        // $: when you bind your state code for two way interaction
        TabView(selection: $tabIndex){
            Text("This is tag " + String(tabIndex))
                // Creates tab item
                .tabItem{
                    VStack {
                        Image(systemName: "tortoise.fill")
                        Text("tab 1")
                    }
                }// tags it as index 0
                .tag(0)
            VStack{
                Button("Take me to tab 3"){
                    tabIndex = 2
                }
                // tabitem crates tab item
            }.tabItem {
                VStack {
                    Image(systemName: "arrow.backward")
                    Text("Heart")
                }
            }
            .tag(1)
           
          
            VStack{
                ForEach(1...100, id: \.self) { i in
                    Text("This is tab 3")
                    
                }
                
            }.tabItem {
                VStack{
                Image(systemName: "hands.clap.fill")
                Text("Tab 3")
                } }.tag(2)
                
          
        }
    }
}

struct tabview_Previews: PreviewProvider {
    static var previews: some View {
        tabview()
    }
}
