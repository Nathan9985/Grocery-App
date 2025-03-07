//
//  ContentView.swift
//  GroceryApp
//
//  Created by Nathaniel Ruiz on 3/6/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 2.0) {
                NavigationStack {
                    List(GroceryItems) { groceryItem in
//                        NavigationLink(destination: TeamDetail(team: team)) {
//                            TeamRow(team: team)
//                        }
                        ItemRow(groceryItem: groceryItem)
                    }
                    .navigationTitle(Text("Your Fridge"))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
