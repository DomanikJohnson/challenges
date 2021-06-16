//
//  BookModel.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var booksArr = [Book]()
    
    init() {
        booksArr = getJson()
    }
    
    
     func getJson() -> [Book] {
            
        // Get bundle data
        let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard  pathString != nil else {
            return [Book]()
        }
        
        // Grab url
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            // Get data from URL
          let data =  try Data(contentsOf: url)
            //Decode
          let decoder = JSONDecoder()
        
         // Decode data with decoder method
         let bookData = try decoder.decode([Book].self,  from: data)
        
            // return array
            return bookData
            
        } catch {
            print(error)
        }
        
        // return empty array
        return [Book]()
        }
    
    func updateRating(forid: Int, pick:Int) {
        if let val = booksArr.firstIndex(where: {$0.id == forid}) {
            booksArr[val].rating = pick
        }
        
    }
    
    
    func updateFavorite(forid:Int) {
        if let val = booksArr.firstIndex(where: {$0.id == forid}) {
            booksArr[val].isFavourite.toggle()
        }
    
    }
    
    func updatePage(forId: Int, page: Int) {
        if let index = booksArr.firstIndex(where: { $0.id == forId }) {
            booksArr[index].currentPage = page
        }
    }
}
