//
//  ItemList.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 15/06/2022.
//

import SwiftUI

struct ItemList: View {
    @EnvironmentObject var inventoryItem: InventoryData
    //let category: Category
    
    @State private var showMissingOnly = false
    
    var filteredItems: [Inventory] {
        inventoryItem.inventories.filter { item in
            (!showMissingOnly || item.obtained == false)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showMissingOnly){
                    Text("Manquants")
                }
                
                ForEach(filteredItems) { item in
                    ItemRow(item: item)
                }
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
