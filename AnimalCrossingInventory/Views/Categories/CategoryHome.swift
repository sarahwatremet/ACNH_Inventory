//
//  CategoryHome.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 27/06/2022.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var inventoryData: InventoryData
    var categoryName: String
    var items: [Inventory]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(inventoryData.categories.keys.sorted(), id: \.self) { key in
                    NavigationLink {
                        ItemList(categoryName: key,
                                 items: inventoryData.categories[key]!)
                    } label: {
                        Text(key)
                    }
                }
            }
            .navigationTitle("Catégories")
        }
    }
}


struct CategoryHome_Previews: PreviewProvider {
    static let items = InventoryData()
    
    static var previews: some View {
        CategoryHome(categoryName: items.inventories[0].category.rawValue,
                     items: items.inventories
        )
            .environmentObject(InventoryData())
    }
}
