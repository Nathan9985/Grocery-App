//
//  EditItem.swift
//  GroceryApp
//
//  Created by Nathaniel Ruiz on 3/6/25.
//

import Foundation
import SwiftUI

struct EditItem: View {
    
    var groceryItem: GroceryItem
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Edit Item")
        }
    }
}

#Preview {
    EditItem(groceryItem: GroceryItems[0])
}
