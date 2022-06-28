////
////  CategoryHome.swift
////  AnimalCrossingInventory
////
////  Created by Sarah Watremet on 27/06/2022.
////
//
//import SwiftUI
//
//struct CategoryHome: View {
//    @EnvironmentObject var inventoryData: InventoryData
//
//    var body: some View {
//        NavigationView {
//            List {
//                ForEach(inventoryData.categories.keys.sorted(), id: \.self) { key in
//                    Text(key)
//                }
//            }
//            .navigationTitle("Catégories")
//        }
//    }
//}
//
//
//struct CategoryHome_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryHome()
//            .environmentObject(InventoryData())
//    }
//}
