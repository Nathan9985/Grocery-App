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
                        NavigationLink(destination: EditItem(groceryItem: groceryItem)) {
                            ItemRow(groceryItem: groceryItem)
                        }
                    }
                    .navigationTitle(Text("Your Fridge"))
                    .toolbar {
                              ToolbarItem(placement: .navigationBarTrailing) {
                                  NavigationLink {
                                      AddItem()
                                  } label: {
                                      Image(systemName: "plus.app")
                                          .font(.title2)
                                  }
                              }
                            }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
