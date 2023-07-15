//
//  HeadingView.swift
//  Africa
//
//  Created by Petar Iliev on 7/15/23.
//

import SwiftUI


struct HeadingView: View {
    // MARK: - PROPERTIES
    var image: String
    var text: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(systemName: image)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(text)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

// MARK: - PROPERTIES
struct HeadingView_Previews: PreviewProvider {
    static var previews: some View {
        HeadingView(image: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
