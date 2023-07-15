//
//  MapView.swift
//  Africa
//
//  Created by Petar Iliev on 7/8/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = K.africa
    private var locations: [Location] = Bundle.main.decode(K.locations)
    
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations) { location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)) {
                Image("logo").resizable().scaledToFit().frame(width: 32)
            }
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
