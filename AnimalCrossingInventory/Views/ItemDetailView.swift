//
//  ItemDetailView.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 09/06/2022.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var inventoryItem: InventoryData
    //var item: Inventory
    
    var body: some View {
        VStack {
            
            ItemImage()
            
            VStack {
                Text(inventoryItem.inventories.categories[0].fish![0].name)
                .font(.title)
                .bold()
            
                VStack(alignment: .leading){
                    
                    HStack {
                        Text("Période :")
                        Text(inventoryItem.inventories.categories[0].fish![0].availability.isAllYear ? "Toute l'année" : inventoryItem.inventories.categories[0].fish![0].availability.monthNorthern
                        )
                    }
                    
                    HStack {
                        Text("Heure :")
                        Text(
                            inventoryItem.inventories.categories[0].fish![0].availability.isAllDay ? "Toute la journée" : inventoryItem.inventories.categories[0].fish![0].availability.time
                        )
                    }
                    
                    HStack {
                        Text("Lieu :")
                        Text(inventoryItem.inventories.categories[0].fish![0].availability.location)
                    }
                    
                    
                    HStack {
                        Text("Prix:")
                        Text(inventoryItem.inventories.categories[0].fish![0].price)
                        Text("clochettes")
                    }
                }
                .font(.subheadline)
            }
        }
    }
}

struct ItemDetailView_Previews: PreviewProvider {
    static let inventoryItems = InventoryData()

    static var previews: some View {
        ItemDetailView()
            .environmentObject(inventoryItems)
    }
}
