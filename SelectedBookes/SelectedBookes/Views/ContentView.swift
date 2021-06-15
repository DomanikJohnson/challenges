//
//  ContentView.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: BookModel
    
    var body: some View {
            NavigationView {
                ScrollView {
                LazyVStack{
                    ForEach(model.booksArr) { book in
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                BaseBooks(book: book)
                            })
                            
                        }
             

                    }
                }
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
