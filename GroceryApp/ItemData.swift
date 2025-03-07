//
//  ItemData.swift
//  GroceryApp
//
//  Created by Nathaniel Ruiz on 3/6/25.
//

import Foundation

/*
 * Represents a single GroceryItem within the user's fridge/pantry.
 *
 * Things to add maybe:
 *          Description of how to tell if item still good
 *
 */
struct GroceryItem: Identifiable {
    var id = UUID()
    var name: String
    var category: Category
    var bestby: Date
}

/*
 * Represents all possible categories user can choose from.
 * Allow user to add their own?
 */
enum Category: String, CaseIterable, Identifiable {
    case Produce = "Produce"
    case Canned = "Canned"
    case Meat = "Meat"
    case Dairy = "Dairy"
    
    var id: String { self.rawValue }
}

/*
 * Adapted from https://stackoverflow.com/questions/71626331/create-date-by-components-in-swift
 */
func createDate(year: Int, month: Int, day: Int)->Date {
   let calendar = Calendar.current

    var dateComponents = DateComponents()
    dateComponents.year = year
    dateComponents.month = month
    dateComponents.day = day

   let date = calendar.date(from: dateComponents) ?? .now
   return date
}

/*
 * Test sample of GroceryItems
 */
let GroceryItems = [
    GroceryItem(name: "Apple", category: Category.Produce, bestby: createDate(year: 2025, month: 3, day: 16)),
    GroceryItem(name: "Avocado", category: Category.Produce, bestby: createDate(year: 2025, month: 3, day: 20)),
    GroceryItem(name: "Sardines", category: Category.Canned, bestby: createDate(year: 2028, month: 3, day: 6)),
    GroceryItem(name: "Chicken Breast", category: Category.Meat, bestby: createDate(year: 2025, month: 3, day: 10)),
    GroceryItem(name: "Yogurt", category: Category.Dairy, bestby: createDate(year: 2025, month: 3, day: 25))
]
