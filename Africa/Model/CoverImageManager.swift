//
//  CoverImageManager.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import Foundation

struct CoverImageManager {
    
    // MARK: - METHODS
    func getImages() -> [CoverImage]? {
        if let URL = Bundle.main.url(forResource: "covers", withExtension: "json") {
            do {
                let data = try Data(contentsOf: URL)
                let decodedData = try JSONDecoder().decode([CoverImage].self, from: data)
                return decodedData
            } catch {
                print("Error: \(error)")
            }
        }
        return nil
    }
}
