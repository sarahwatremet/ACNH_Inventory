//
//  AnimalCrossingInventoryApp.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 03/06/2022.
//

import SwiftUI

@main
struct AnimalCrossingInventoryApp: App {
    @StateObject private var inventoryItems = InventoryData()

    var body: some Scene {
        WindowGroup {
            CategoryHome(categoryName: inventoryItems.inventories[0].category.rawValue,
                         items: inventoryItems.inventories
            )
                .environmentObject(inventoryItems)
        }
    }
}
