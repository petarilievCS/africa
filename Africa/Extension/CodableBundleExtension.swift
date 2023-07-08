//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        guard let URL = Self.main.url(forResource: file, withExtension: "json") else { fatalError("File not found: \(file)") }
        do {
            let data = try Data(contentsOf: URL)
            let decodedData = try JSONDecoder().decode(T.self, from: data)
            return decodedData
        } catch {
            fatalError("Error: Failed to decode data.")
        }
    }
}
