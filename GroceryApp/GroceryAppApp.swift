//
//  GroceryAppApp.swift
//  GroceryApp
//
//  Created by Nathaniel Ruiz on 3/6/25.
//

import SwiftUI

@main
struct GroceryAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
