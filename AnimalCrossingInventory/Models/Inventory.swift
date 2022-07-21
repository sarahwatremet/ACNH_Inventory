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


// MARK: - Inventory Element
struct Inventory: Codable, Identifiable {
    let id, name: String
    var price: Int
    let size: Size
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
    
}

// MARK: - Availability
struct Availability: Codable {
    let monthNorthern, monthSouthern, time: String
    let isAllDay, isAllYear: Bool
    let location: String
    let rarity: Rarity

    enum CodingKeys: String, CodingKey {
        case monthNorthern = "month-northern"
        case monthSouthern = "month-southern"
        case time, isAllDay, isAllYear, location, rarity
    }
    
//    var isNow: Bool {
//        monthNorthern = Date.now
//    }
}

enum Rarity: String, Codable {
    case empty = ""
    case rare = "Rare"
    case trèsRare = "Très Rare"
}

enum Category: String, Codable {
    case insectes = "Insectes"
    case poissons = "Poissons"
}

enum Size: String, Codable {
    case empty = ""
    case enorme = "Enorme"
    case enormeAileron = "Enorme (aileron)"
    case fine = "Fine"
    case grande = "Grande"
    case minuscule = "Minuscule"
    case moyenne = "Moyenne"
    case moyenneAileron = "Moyenne (aileron)"
    case moyenneGrande = "Moyenne/grande"
    case petite = "Petite"
    case petiteMoyenne = "Petite/moyenne"
    case trèsGrande = "Très grande"
}






//
//
//// MARK: - Welcome
//struct Inventory: Codable {
//    var items: [Item]
//}
//
//// MARK: - Item
//struct Item: Identifiable, Codable {
//    let id, name: String
//    let price: Int
//    let size: String
//    var obtained: Bool
//    let availability: Availability
//    let imageURL: String
//    let logoURL: String
//    let category: Category
//
//    enum CodingKeys: String, CodingKey {
//        case id, name, price, size, obtained, availability
//        case imageURL = "image_url"
//        case logoURL = "logo_url"
//        case category
//    }
//
//    enum Category: String, Codable, CaseIterable, Hashable {
//        case poissons = "Poissons"
//        case insectes = "Insectes"
//    }
//}
//
//// MARK: - Availability
//struct Availability: Codable {
//    let monthNorthern, monthSouthern: String
//    let time: String
//    let isAllDay, isAllYear: Bool
//    let location: String
//    let rarity: Rarity
//
//    enum CodingKeys: String, CodingKey {
//        case monthNorthern = "month-northern"
//        case monthSouthern = "month-southern"
//        case time, isAllDay, isAllYear, location, rarity
//    }
//}
//
//enum Rarity: String, Codable {
//    case empty = ""
//    case rare = "Rare"
//    case trèsRare = "Très Rare"
//}
//


