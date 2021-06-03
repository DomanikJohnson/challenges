//
//  PersonModel.swift
//  OnOf-Challenge
//
//  Created by Domanik Johnson on 6/3/21.
//

import Foundation

class PersonModel: ObservableObject {
    
    @Published var persons:[Person] = []
    // Use for toggle is on
    @Published var showName:Bool = true
    @Published var showAddress = true
    @Published var showCompany = true
    @Published var showYear = true
    
    init() {
        persons.append(Person(id: UUID(), name: "Domanik Johjnson", address: "2524 E main street", companyName: "Wells", yearOfExperience: 3))
        persons.append(Person(id: UUID(), name: "kING JDID ", address: "2624 w main street", companyName: "BOA", yearOfExperience: 33))
        persons.append(Person(id: UUID(), name: "Linkedin LGI", address: "9888 Glen Avenue", companyName: "Dominion", yearOfExperience: 53))
        persons.append(Person(id: UUID(), name: "Cosmo King", address: "2524 E main street", companyName: "Captial One", yearOfExperience: 43))
        persons.append(Person(id: UUID(), name: "Alfred amion", address: "2524 E main street", companyName: "sUNTRUST", yearOfExperience: 83))

    }

    
    
   
}
