//
//  PizzaModel.swift
//  MVVM-challenge
//
//  Created by Domanik Johnson on 5/30/21.
//

import Foundation

class PizzaModel: ObservableObject {
  @Published  var arr:[Pizza] = []
    
    init() {
        arr.append(Pizza(name: "Supreme", topping1: "Onion", topping2: "Cheese", topping3: "Meat"))
        arr.append(Pizza(name: "Cheese", topping1: "none", topping2: "none", topping3: "none"))
        arr.append(Pizza(name: "Meat Lover", topping1: "Sasuage", topping2: "Peporoni", topping3: "Meat"))
    }
}
