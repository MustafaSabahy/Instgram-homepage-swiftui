//
//  InstagramApp.swift
//  Instagram
//
//  Created by mustafa sabahy on 29/01/2022.
//

import SwiftUI

@main
struct InstagramApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
