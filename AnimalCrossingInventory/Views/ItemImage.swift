//
//  ItemImage.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 09/06/2022.
//

import SwiftUI

struct ItemImage: View {
    
    var body: some View {
        Image("Abeille naine")
            .frame(width: 200, height: 100)
            .background(Image("fond"))
            .clipShape(Rectangle())
            .overlay{
                Rectangle().stroke(.green, lineWidth: 2)
            }
            .shadow(radius: 2)
    }
}

struct ItemImage_Previews: PreviewProvider {
    static var previews: some View {
        ItemImage()
    }
}
