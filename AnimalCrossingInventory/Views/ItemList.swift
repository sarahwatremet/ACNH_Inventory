//
//  ItemList.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 15/06/2022.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var inventoryItem: InventoryData
    
    @State private var showMissingOnly = false
        
    var categoryName: String
    var items: [Inventory]
    
//    var filteredItems: [Inventory] {
//        inventoryItem.inventories.filter { item in
//            (!showMissingOnly || item.obtained == false)
//        }
//    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showMissingOnly){
                    Text("Manquants")
                }
                
                ForEach(items) { item in
                    ItemRow(
                        item: item
                    )
                }
            }
        .navigationTitle(categoryName)
        }
    }
}

struct ItemList_Previews: PreviewProvider {
    static var inventoryItems = InventoryData()
    
    static var previews: some View {
        ItemList(
            categoryName: inventoryItems.inventories[0].category.rawValue,
            items: inventoryItems.inventories
        )
            .environmentObject(inventoryItems)
    }
}
