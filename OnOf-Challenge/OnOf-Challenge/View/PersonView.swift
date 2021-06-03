//
//  ContentView.swift
//  OnOf-Challenge
//
//  Created by Domanik Johnson on 6/3/21.
//

import SwiftUI

struct PersonView: View {
    @EnvironmentObject var model:PersonModel
    
    var body: some View {
        VStack(alignment: .leading){
            List(model.persons) { person in
               PersonDetailView(person: person)
            }
        }
    }
}

struct PersonView_Previews: PreviewProvider {
    static var previews: some View {
        PersonView()
    }
}
