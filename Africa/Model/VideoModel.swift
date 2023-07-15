//
//  VideoModel.swift
//  Africa
//
//  Created by Petar Iliev on 7/15/23.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    var thumbnail: String {
        "video-\(id)"
    }
}
