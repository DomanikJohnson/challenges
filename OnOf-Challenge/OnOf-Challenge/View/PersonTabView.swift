//
//  PersonTabView.swift
//  OnOf-Challenge
//
//  Created by Domanik Johnson on 6/3/21.
//

import SwiftUI

struct PersonTabView: View {
    var body: some View {
        TabView {
            PersonView()
                .tabItem {
                    VStack{
                        Image(systemName:"person.fill")
                        Text("Person")
                    }
                }
            PersonSettings()
                .tabItem {
                    VStack{
                        Image(systemName: "pencil")
                        Text("Settings")
                    }
                }
            
        }.environmentObject(PersonModel())
        
    }
}

struct PersonTabView_Previews: PreviewProvider {
    static var previews: some View {
        PersonTabView()
    }
}
