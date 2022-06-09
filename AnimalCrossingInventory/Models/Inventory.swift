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

// MARK: - Inventory
struct Inventory: Codable {
    let categories: [Category]
}

// MARK: - Category
struct Category: Codable {
    let fish: [Fish]?
    let bugs: [Bug]?
    let deepSea: [DeepSea]?

    enum CodingKeys: String, CodingKey {
        case fish, bugs
        case deepSea = "deep_sea"
    }
}

// MARK: - Bug
struct Bug: Codable {
    let id, name, price, size: String
    let obtained: Obtained
    let availability: Availability
    let imageURL, logoURL: String

    enum CodingKeys: String, CodingKey {
        case id, name, price, size, obtained, availability
        case imageURL = "image_url"
        case logoURL = "logo_url"
    }
}

// MARK: - Availability
struct Availability: Codable {
    let monthNorthern, monthSouthern: String
    let time: String
    let isAllDay, isAllYear: Bool
    let location: String
    let rarity: String

    enum CodingKeys: String, CodingKey {
        case monthNorthern = "month-northern"
        case monthSouthern = "month-southern"
        case time, isAllDay, isAllYear, location, rarity
    }
}


enum Obtained: Codable {
    case bool(Bool)
    case string(String)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(String.self) {
            self = .string(x)
            return
        }
        throw DecodingError.typeMismatch(Obtained.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Obtained"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .string(let x):
            try container.encode(x)
        }
    }
}

// MARK: - DeepSea
struct DeepSea: Codable {
    let id, name, price, size: String
    let obtained: String
    let availability: Availability
    let imageURL, logoURL: String

    enum CodingKeys: String, CodingKey {
        case id, name, price, size, obtained, availability
        case imageURL = "image_url"
        case logoURL = "logo_url"
    }
}

// MARK: - Fish
struct Fish: Codable {
    let id, name, price, size: String
    let obtained: Bool
    let availability: Availability
    let imageURL, logoURL: String

    enum CodingKeys: String, CodingKey {
        case id, name, price, size, obtained, availability
        case imageURL = "image_url"
        case logoURL = "logo_url"
    }
}
