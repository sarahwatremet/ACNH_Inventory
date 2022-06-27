//
//  Bugs.swift
//  AnimalCrossingInventory
//
//  Created by Sarah Watremet on 03/06/2022.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let inventory: Inventory = try! newJSONDecoder().decode(Inventory.self, from: jsonData)


import Foundation
import SwiftUI
import Combine


// MARK: - Welcome
struct Inventory: Codable {
    var items: [Item]
}

// MARK: - Item
struct Item: Identifiable, Codable {
    let id, name: String
    let price: Int
    let size: String
    var obtained: Bool
    let availability: Availability
    let imageURL: String
    let logoURL: String
    let category: Category

    enum CodingKeys: String, CodingKey {
        case id, name, price, size, obtained, availability
        case imageURL = "image_url"
        case logoURL = "logo_url"
        case category
    }
    
    enum Category: String, Codable, CaseIterable, Hashable {
        case poissons = "Poissons"
        case insectes = "Insectes"
    }
}

// MARK: - Availability
struct Availability: Codable {
    let monthNorthern, monthSouthern: String
    let time: String
    let isAllDay, isAllYear: Bool
    let location: String
    let rarity: Rarity

    enum CodingKeys: String, CodingKey {
        case monthNorthern = "month-northern"
        case monthSouthern = "month-southern"
        case time, isAllDay, isAllYear, location, rarity
    }
}

enum Rarity: String, Codable {
    case empty = ""
    case rare = "Rare"
    case trèsRare = "Très Rare"
}



