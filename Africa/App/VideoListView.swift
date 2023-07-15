//
//  VideoListView.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import SwiftUI

struct VideoListView: View {
    @State private var videos: [Video] = Bundle.main.decode("videos")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    VideoListItemView(video: video).padding(.vertical, 4)
                }
            } //: List
            .navigationTitle(Text("Videos"))
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                videos.shuffle()
                hapticImpact.impactOccurred()
            }, label: {
                Image(systemName: "shuffle")
            }))
        } //: NavigationView
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
