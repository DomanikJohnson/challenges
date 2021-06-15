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
        Text(book.author)
    }
}

struct BaseBooks_Previews: PreviewProvider {
    static var previews: some View {
        BaseBooks(book: Book())
    }
}
