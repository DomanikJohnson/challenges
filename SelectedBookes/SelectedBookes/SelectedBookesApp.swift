//
//  SelectedBookesApp.swift
//  SelectedBookes
//
//  Created by Domanik Johnson on 6/14/21.
//

import SwiftUI

@main
struct SelectedBookesApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(BookModel())
        }
    }
}
