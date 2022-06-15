//
//  ItemList.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 15/06/2022.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var inventoryItem: InventoryData

    var body: some View {
        NavigationView {
            List {
                ItemRow(item: inventoryItem.inventories)
            }
            .navigationTitle("Poissons")
        }
        
    }
}

struct ItemList_Previews: PreviewProvider {
    static let inventoryItems = InventoryData()
    
    static var previews: some View {
        ItemList()
            .environmentObject(inventoryItems)
    }
}
