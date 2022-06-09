//
//  ItemDetailView.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 09/06/2022.
//

import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var inventoryItem: InventoryData
    
    var body: some View {
        VStack {
            
            ItemImage()
            
            VStack {
            Text("Abeille Naine")
                .font(.title)
                .bold()
                
            
                VStack(alignment: .leading){
                    Text("Période : Mars - Juillet")
                    Text("Heure : 8h - 17h")
                    Text("Lieu : Ciel")
                    Text("Prix: 200 clochettes")
                        .font(.subheadline)
                }
            }
        }
    }
}

//struct ItemDetailView_Previews: PreviewProvider {
//    static let inventoryItems = InventoryData()
//
//    static var previews: some View {
//        ItemDetailView(inventoryItem: InventoryData)
//            .environmentObject(inventoryItems)
//    }
//}
