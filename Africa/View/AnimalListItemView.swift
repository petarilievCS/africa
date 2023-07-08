//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import SwiftUI

struct AnimalListItemView: View {
    // MARK: - PROPERTY
    var animal: Animal
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(animal.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            VStack(alignment: .leading, spacing: 8) {
                Text(animal.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                Text(animal.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VStack
        } //: HStack
    }
}

// MARK: - PREVIEW
struct AnimalListItemView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalListItemView(animal: Animal(id: "lion", name: "Lion", headline: "The world's most social felines, lions roam the savannas and grasslands of the African continet, hunting cooperatively and raising cubs in prides.", description: "", link: "", image: "lion", gallery: [], fact: []))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
