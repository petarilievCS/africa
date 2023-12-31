//
//  ContentView.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import SwiftUI

struct ContentView: View {
    // MARK: PROPERTIES
    private var animals: [Animal] = Bundle.main.decode("animals")
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //: NavigationLink
                }
                
            }
            .navigationTitle(Text("Africa"))
            .navigationBarTitleDisplayMode(.large)
        } //: NavigationView
    }
}

// MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
