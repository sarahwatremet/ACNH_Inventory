//
//  ItemRow.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 15/06/2022.
//

import SwiftUI

struct ItemRow: View {
    @EnvironmentObject var inventoryData: InventoryData
    var item: Item
    
    var itemIndex: Int {
        inventoryData.inventories.items.firstIndex(where: { $0.id == item.id })!
    }
        
    
    var body: some View {
        HStack {
            
            AsyncImage(url: URL(string: item.imageURL)) { image in
                image
                    .resizable()
                    .background(Image("fond"))
                    .clipShape(Rectangle())
                    .overlay{
                        Rectangle().stroke(.green, lineWidth: 1)
                    }
                    .frame(width: 30, height: 30)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text(item.name)
                        .bold()
                        .font(.subheadline)
                    
                    Text(item.availability.rarity)
                        .font(.system(size: 8))
                        .foregroundColor(.white)
                        .padding(3)
                        .background(.yellow)
                        .cornerRadius(5)
                        
                }
                
                HStack(spacing: 3) {
                    Group {
                        Text("Période :")
                            .foregroundColor(.green)
                            .bold()
                        Text(item.availability.isAllYear ? "Toute l'année" : item.availability.monthNorthern
                        )
                    
                        Text("Heure :")
                            .foregroundColor(.green)
                            .bold()
                        Text(
                            item.availability.isAllDay ? "Toute la journée" : item.availability.time
                        )
                    }
                        .font(.system(size: 10))
                }
                
                HStack(spacing: 3) {
                    Group {
                        Text("Lieu :")
                        .foregroundColor(.green)
                        .bold()
                        Text(item.availability.location)
                        
                        Text("Prix:")
                            .foregroundColor(.green)
                            .bold()
                        Text(String(item.price))
                        Text("clochettes")
                    }
                        .font(.system(size: 10))
                    
                    Spacer()
                    
                }
            }
            Spacer()
                        
            ObtainedButton(isSet: $inventoryData.inventories.items[itemIndex].obtained)
            
        }
        .padding(5)
    }
    
    
}

struct ItemRow_Previews: PreviewProvider {
    static var items = InventoryData()
    
    static var previews: some View {
        ItemRow(item: items.inventories.items[3])
            .environmentObject(items)
    }
}
