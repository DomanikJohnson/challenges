//
//  Book.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import Foundation

struct Book: Decodable, Identifiable {
    var image = ""
     var title = ""
     var author = ""
    var isFavourite:Bool = false
     var currentPage = 0
     var rating = 0
     var id  = 0
     var content:[String] = []
}
