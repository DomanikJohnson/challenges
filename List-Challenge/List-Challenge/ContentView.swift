//
//  ContentView.swift
//  List-Challenge
//
//  Created by Domanik Johnson on 5/29/21.
//

import SwiftUI

struct ContentView: View {
    var arr = ["One", "Two", "Three", "Four", "Five"]
    @State var showList:[String] = []
    
    func showListData(){
        showList.append(arr.randomElement() ?? "")
    }
    var body: some View {
        VStack{
            // Creater a navigation view with title
            NavigationView {
                // List of views
                List(showList, id: \.self) { elm in
                    // Linking so when user clicks on link
                    NavigationLink(
                        destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                        label: {
                            Text(elm)
                        })
                    
                
                
                    //Shows bar title
                }.navigationBarTitle(Text("This title is awesome"))
            }
         
            Button("Push") {
                showListData()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
