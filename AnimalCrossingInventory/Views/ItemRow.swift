//
//  ItemRow.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 15/06/2022.
//

import SwiftUI

struct ItemRow: View {
    var item: Inventory
    
    var body: some View {
        HStack {
            
            AsyncImage(url: URL(string: item.categories[0].fish![0].imageURL)) { image in
                image
                    .resizable()
                    .background(Image("fond"))
                    .clipShape(Rectangle())
                    .overlay{
                        Rectangle().stroke(.green, lineWidth: 2)
                    }
                    .shadow(radius: 2)
                    .frame(width: 30, height: 30)
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                HStack {
                    Text(item.categories[0].fish![0].name)
                        .bold()
                        .font(.subheadline)
                }
                HStack(spacing: 3) {
                    
                        Text("Période :")
                            .foregroundColor(.green)
                            .bold()
                        Text(item.categories[0].fish![0].availability.isAllYear ? "Toute l'année" : item.categories[0].fish![0].availability.monthNorthern
                        )
                    
                    Text("Heure :")
                        .foregroundColor(.green)
                        .bold()
                    Text(
                        item.categories[0].fish![0].availability.isAllDay ? "Toute la journée" : item.categories[0].fish![0].availability.time
                    )
                    
                    Text("Lieu :")
                        .foregroundColor(.green)
                        .bold()
                    Text(item.categories[0].fish![0].availability.location)
                }
                
                HStack(spacing: 3) {
                    Text("Prix:")
                        .foregroundColor(.green)
                        .bold()
                    Text(item.categories[0].fish![0].price)
                    Text("clochettes")
                }
            }
            .font(.system(size: 10))
            Spacer()
        }
        .padding(5)
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: InventoryData().inventories)
    }
}
