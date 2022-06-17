//
//  ObtainedButton.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 17/06/2022.
//

import SwiftUI

struct ObtainedButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Obtained", systemImage: isSet ? "tag.fill" : "tag")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .green : .gray)
        }
    }
}

struct ObtainedButton_Previews: PreviewProvider {
    static var previews: some View {
        ObtainedButton(isSet: .constant(true))
    }
}
