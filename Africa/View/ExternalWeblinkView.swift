//
//  ExternalWeblinkView.swift
//  Africa
//
//  Created by Petar Iliev on 7/15/23.
//

import SwiftUI

struct ExternalWeblinkView: View {
    let animal: Animal
    let wikipediaURL: String = "https://wikipedia.org"
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: URL(string: animal.link) ?? URL(string: wikipediaURL)!)
                    Image(systemName: "arrow.up.right.square")
                }
                .foregroundColor(.accentColor)
            } //: HStack
        } //: GroupBox
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals")
    
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
