//
//  VideoListItemView.swift
//  Africa
//
//  Created by Petar Iliev on 7/15/23.
//

import SwiftUI
import AVFoundation

struct VideoListItemView: View {
    let video: Video
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(video.thumbnail)
                .resizable()
                .scaledToFit()
                .frame(height: 80)
                .cornerRadius(9)
                .overlay {
                    Image(systemName: "play.circle")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 32)
                        .shadow(radius: 4)
                }
        
            VStack(alignment: .leading, spacing: 8) {
                Text(video.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: VStack
        } //: HStack
    }
}

struct VideoListItemView_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos")
    
    static var previews: some View {
        VideoListItemView(video: videos[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
