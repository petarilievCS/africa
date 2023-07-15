//
//  LocationModel.swift
//  Africa
//
//  Created by Petar Iliev on 7/15/23.
//

import Foundation

struct Location: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let latitude: Double
    let longitude: Double
}
