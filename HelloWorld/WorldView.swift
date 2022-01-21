//
//  WorldView.swift
//  HelloWorld
//
//  Created by Максим Пинигин on 21.01.2022.
//

import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 53.757547, longitude: 87.136044),
        span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
    )
    var body: some View {
        Map(coordinateRegion: $region, annotationItems: locations.places) {
            location in MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.x, longitude: location.y)) {
                NavigationLink(destination: ContentView(location: location)) {
                    Text(location.name)
                        .shadow(radius: 3)
                        .font(.title)
                }
            }
        }
            .navigationTitle("Районы")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
