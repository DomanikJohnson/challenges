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
                            destination: SingleBookView(book: book),
                            label: {
                                BaseBooks(book: book)
                            })
                            
                        }
             

                    }
                }.navigationBarTitle("My Library")
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(BookModel())
    }
}
