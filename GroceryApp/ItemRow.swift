//
//  ItemRow.swift
//  GroceryApp
//
//  Created by Nathaniel Ruiz on 3/6/25.
//

/*
 * Represents a single row in GroceryItems list.
 * Convey item name, category, and best by information to user.
 *
 * Things to Address: What happens if name is too long for the line?
 *                    What if days remaining too long for line?
 */

import Foundation
import SwiftUI

struct ItemRow: View {
    
    var groceryItem: GroceryItem
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(groceryItem.name)
                    .font(.title)
                Spacer()
                let dateString = groceryItem.bestby.formatted(date: .abbreviated, time: .omitted)
                Text(dateString)
                    .font(.subheadline)
            }
            HStack {
                Text(groceryItem.category.rawValue)
                    .font(.subheadline)
                Spacer()
                let timeRemaining = Calendar.current.dateComponents([ .day], from: Date.now, to: groceryItem.bestby)
                Text("Days Remaining: \(timeRemaining.day!)")
                    .font(.subheadline)
            }
        }
    }
}

#Preview {
    ItemRow(groceryItem: GroceryItems[0])
}
