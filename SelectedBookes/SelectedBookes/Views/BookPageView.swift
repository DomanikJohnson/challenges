//
//  BookPageView.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import SwiftUI

struct BookPageView: View{
    @EnvironmentObject var model: BookModel
    @State var page = 0
    var book: Book
    var body: some View {
        // Create swipe request
        TabView(selection: $page){
            // Gets index of each element
            ForEach(book.content.indices) { index in
                VStack{
                    Text(book.content[index])
                        .tag(index)
                    Spacer()
                    Text("\(page + 1)")
                }
                
            }
            // Change style view of tab
        }.tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))
        .onChange(of: page, perform: { value in
            model.updatePage(forId: book.id, page: page)
        })
        .onAppear {
            page = book.currentPage
        }

    }
}

struct BookPageView_Previews: PreviewProvider {
    static var previews: some View {
        BookPageView(book: Book())
            .environmentObject(BookModel())
    }
}
