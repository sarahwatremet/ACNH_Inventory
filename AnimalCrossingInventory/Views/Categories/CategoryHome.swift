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
//        let columns = [GridItem(), GridItem()]
//            NavigationView {
//              ScrollView {
//                LazyVGrid(columns: columns, content: {
//                    ForEach($inventoryData.categories.keys.sorted,
//                          id: \.self) { category in
//                      NavigationLink(
//                        destination: ItemList(category: Category(rawValue: category) ?? Category.poissons)
//                            .environmentObject(inventoryData),
//                        label: {
//                            CategoryView(category: Category(rawValue: category) ?? Category.poissons)
//                        })
//                  }
//                })
//              }
//              .navigationTitle("Categories")
//            }
//    }
//}
//
//struct CategoryView: View {
//    let category: Category
//
//    var body: some View {
//        ZStack {
//            Text(category.rawValue)
//                .font(.title)
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
