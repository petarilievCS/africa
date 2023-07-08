//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {
        guard let URL = Self.main.url(forResource: file, withExtension: "json") else { fatalError("File not found: \(file)") }
        do {
            let data = try Data(contentsOf: URL)
            let decodedData = try JSONDecoder().decode([CoverImage].self, from: data)
            return decodedData
        } catch {
            fatalError("Error: Failed to decode data.")
        }
    }
}
