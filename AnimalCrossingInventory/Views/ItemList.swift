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
    
    var filteredItems: [Inventory] {
        items.filter { item in
            (!showMissingOnly || item.obtained == false)
        }
    }
    
    @State private var increasingPrice = false
    
    var sortedIncreasingPrice: [Inventory] {
        items.sorted(by: { !increasingPrice || $0.price < $1.price })
    }

    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showMissingOnly){
                    Text("Manquants")
                }
                
                Toggle(isOn: $increasingPrice){
                    Text("Prix croissants")
                }
                
                ForEach(sortedIncreasingPrice) { item in
                    ForEach(filteredItems) { item in
                        ItemRow(
                            item: item
                        )
                    }
                    ItemRow(item: item)
                }

//                ForEach(filteredItems) { item in
//                    ItemRow(
//                        item: item
//                    )
//                }
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
