//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    let animal: Animal
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding(.vertical, 8)
                    .background {
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    }
                
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                Group {
                    HeadingView(image: "photo.on.rectangle.angled", text: "Wilderness in Pictures")
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                Group {
                    HeadingView(image: "questionmark.circle", text: "Did you know?")
                    InsetFactView(animal: animal)
                } //: Group
                .padding(.horizontal)
                
                Group {
                    HeadingView(image: "info.circle", text: "All about \(animal.name)")
                    Text(animal.description).layoutPriority(1)
                } //: Group
                .padding(.horizontal)
                
                Group {
                    HeadingView(image: "map", text: "National Parks")
                    InsetMapView()
                } //: Group
                .padding(.horizontal)
                
                Group {
                    HeadingView(image: "books.vertical", text: "Learn More")
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
            } //: VStack
            .navigationTitle(Text("Learn about \(animal.name)"))
            .navigationBarTitleDisplayMode(.inline)
        } //: ScrollView
    }
}

// MARK: - PREVIEW
struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals")
    
    static var previews: some View {
        NavigationView() {
            AnimalDetailView(animal: animals[0])
        } //: NavigationView
        .previewDevice("iPhone 11 Pro")
    }
}
