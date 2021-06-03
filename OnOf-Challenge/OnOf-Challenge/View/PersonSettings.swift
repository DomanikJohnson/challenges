//
//  PersonSettings.swift
//  OnOf-Challenge
//
//  Created by Domanik Johnson on 6/3/21.
//

import SwiftUI

struct PersonSettings: View {
    @EnvironmentObject var model:PersonModel


    var body: some View {
        VStack{
            Toggle("Show name",  isOn: $model.showName )
            Toggle("Show address",  isOn: $model.showAddress )
            Toggle("Show company",  isOn: $model.showCompany )
            Toggle("Show year",  isOn: $model.showYear )
        }

    }
}

struct PersonSettings_Previews: PreviewProvider {
    static var previews: some View {
        PersonSettings()
    }
}
