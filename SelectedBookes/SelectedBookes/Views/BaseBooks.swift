//
//  BaseBooks.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import SwiftUI

struct BaseBooks: View {
    
    var book:Book
    var body: some View {
    
        ZStack {
            Rectangle()
                .foregroundColor(.white)
                .cornerRadius(10)
                .shadow(color: .black, radius: 10, x: 1, y: 1)
                .frame(width: 350, height: 420, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            VStack {
                HStack {
                    Text(book.title)
                        .foregroundColor(.black)
                    
                    if (book.isFavourite){
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    }
                    
                    
                    
                }
                Text(book.author)
                    .foregroundColor(.black)
                Image(book.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .clipped()
            }
            .padding(.bottom, 7.0)
        }
    }
}

struct BaseBooks_Previews: PreviewProvider {
    static var previews: some View {
        
        BaseBooks(book: Book())
            .environmentObject(BookModel())
    }
}
