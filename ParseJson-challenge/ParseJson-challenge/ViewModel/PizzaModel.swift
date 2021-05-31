//
//  PizzaModel.swift
//  ParseJson-challenge
//
//  Created by Domanik Johnson on 5/30/21.
//

import Foundation

class PizzaModel: ObservableObject {
    
     @Published var pizzaOrder = [Pizza]()
    
    init() {
        // Get the path of the data folder and file
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        
        if let path = pathString {
            
            //URL object
            let url = URL(fileURLWithPath: path)
            
            do {
                //Grabs data
                let data = try Data(contentsOf: url)
                
                // Parse the data with jSONDecoder
                let decoder = JSONDecoder()
                
                //retuirns the data from decode
                let pizzaRecipe = try decoder.decode([Pizza].self, from: data)
                
                for i in pizzaRecipe {
                    
                    // Set a unique ID for each recipe in teh recipeData Array
                    i.id = UUID()
                }
                
                // Setting published var to recipe data
                self.pizzaOrder = pizzaRecipe
                
            }catch {
                print(error)
            }
            
            
        }
        
            
    }
}
