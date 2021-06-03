//
//  PersonDetailView.swift
//  OnOf-Challenge
//
//  Created by Domanik Johnson on 6/3/21.
//

import SwiftUI

struct PersonDetailView: View {
    @EnvironmentObject var model:PersonModel
    
    // Pass Person obj since we are using it for this view
    var person: Person
    var body: some View {
           
        VStack {
            // Have bool for the toogle in order to show names when needed
            if model.showName {
                Text("Name: \(person.name)")
            }
            if model.showAddress {
                Text("Address: \(person.address)")
            }
            if model.showCompany {
                Text("Company: \(person.companyName)")
            }
            if model.showYear {
                Text("Years: \(person.yearOfExperience)")
            }
        }
    }
}

struct PersonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PersonDetailView(person: Person(id: UUID(), name: "ddf", address: "4444 dfdsafa df", companyName: "wells", yearOfExperience: 44)).environmentObject(PersonModel())
    }
}
