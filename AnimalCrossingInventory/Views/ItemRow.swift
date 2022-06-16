//
//  ItemRow.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 15/06/2022.
//

import SwiftUI

struct ItemRow: View {
    var item: Item
    
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
            
            if item.obtained {
                Image(systemName: "tag.fill")
                    .foregroundColor(.green)
                    .imageScale(.small)
            }
        }
        .padding(5)
    }
    
    
}

struct ItemRow_Previews: PreviewProvider {
    static var items = InventoryData().inventories.items
    static var previews: some View {
        ItemRow(item: items[0])
    }
}
