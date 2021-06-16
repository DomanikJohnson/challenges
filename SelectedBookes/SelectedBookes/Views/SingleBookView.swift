//
//  SingleBookView.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import SwiftUI

struct SingleBookView: View {
    @EnvironmentObject var model: BookModel
    var book: Book
    @State var pick =  1
    @State var star = "star"
    var body: some View {
        VStack {
            Spacer()
            Text(book.title)
            Text(book.author)
        
            Image(book.image)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 400, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
         
                Text("Favorite!")
                Button(action: {
                    // Calling function in model
                    model.updateFavorite(forid: book.id)

                }) {
                    // Use ternary with boolean
                    Image( systemName: book.isFavourite ? "star.fill" : "star").resizable().frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
             
              
                    
            }
            Spacer()
            VStack {
                Text("Rate it")
                Picker("", selection: $pick) {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                }.pickerStyle(SegmentedPickerStyle())
                // Callign to keep change of picker value
                 .onChange(of: pick, perform: {value in
                    model.updateRating(forid: book.id, pick: pick)
                    
                })
                
            // Show once page appears
            }.onAppear{ pick = book.rating}
            
            Text(String(pick))
            Spacer()
            
            
            
        }
    }
}

struct SingleBookView_Previews: PreviewProvider {
    static var previews: some View {
        SingleBookView(book: BookModel().booksArr[0])
            .environmentObject(BookModel())
    }
}
