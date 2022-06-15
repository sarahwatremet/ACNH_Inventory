//
//  ItemDetailView.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 09/06/2022.
//

import SwiftUI
import Combine

struct ItemDetailView: View {
    @EnvironmentObject var inventoryItem: InventoryData
    var item: Inventory
    
    var body: some View {
        VStack {
            
            AsyncImage(url: URL(string: item.categories[0].fish![0].imageURL)) { image in
                image
                    .background(Image("fond"))
                    .clipShape(Rectangle())
                    .overlay{
                        Rectangle().stroke(.green, lineWidth: 2)
                    }
                    .shadow(radius: 2)
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 200, height: 100)
                
            
            VStack {
                Text(item.categories[0].fish![0].name)
                .font(.title)
                .bold()
            
                VStack(alignment: .leading){
                    
                    HStack {
                        Text("Période :")
                            .foregroundColor(.green)
                            .bold()
                        Text(item.categories[0].fish![0].availability.isAllYear ? "Toute l'année" : item.categories[0].fish![0].availability.monthNorthern
                        )
                    }
                    
                    HStack {
                        Text("Heure :")
                            .foregroundColor(.green)
                            .bold()
                        Text(
                            item.categories[0].fish![0].availability.isAllDay ? "Toute la journée" : item.categories[0].fish![0].availability.time
                        )
                    }
                    
                    HStack {
                        Text("Lieu :")
                            .foregroundColor(.green)
                            .bold()
                        Text(item.categories[0].fish![0].availability.location)
                    }
                    
                    
                    HStack {
                        Text("Prix:")
                            .foregroundColor(.green)
                            .bold()
                        Text(item.categories[0].fish![0].price)
                        Text("clochettes")
                    }
                    HStack {
                        Text("Taille:")
                            .foregroundColor(.green)
                            .bold()
                        Text(item.categories[0].fish![0].size)
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
        ItemDetailView(item: InventoryData().inventories)
            .environmentObject(inventoryItems)
    }
}
