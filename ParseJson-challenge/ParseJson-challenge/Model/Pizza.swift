//
//  Pizza.swift
//  ParseJson-challenge
//
//  Created by Domanik Johnson on 5/30/21.
//

import Foundation

class Pizza: Decodable, Identifiable {
    var id:UUID?
    var name = ""
    var toppings = [String]()
}
