//
//  VidePlayerView.swift
//  Africa
//
//  Created by Petar Iliev on 7/15/23.
//

import SwiftUI
import AVKit

struct VidePlayerView: View {
    let id: String
    let name: String
    
    var body: some View {
        VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: id, withExtension: "mp4")!)).navigationTitle(name).navigationBarTitleDisplayMode(.inline)
    }
}

struct VidePlayerView_Previews: PreviewProvider {
    static var previews: some View {
        VidePlayerView(id: "cheetah", name: "Cheetah")
    }
}
