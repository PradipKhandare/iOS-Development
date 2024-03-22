//
//  FirstSwiftUIApp.swift
//  FirstSwiftUI
//
//  Created by NTS on 29/12/23.
//

import SwiftUI

@main
struct FirstSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
