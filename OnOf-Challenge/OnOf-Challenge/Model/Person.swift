//
//  Person.swift
//  OnOf-Challenge
//
//  Created by Domanik Johnson on 6/3/21.
//

import Foundation

struct Person: Identifiable {
    var id:UUID?
    var name:String =  ""
    var address: String = ""
    var companyName:String = ""
    var yearOfExperience:Int = 0
}
