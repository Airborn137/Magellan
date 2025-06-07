//
//  MapView.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 06.06.2025.
//

import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 61.7891, longitude: 34.3596),
        span: MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
    )

    var body: some View {
        Map(initialPosition: .region(region)) {
            // Тут можно добавить аннотации позже
        }
        .navigationTitle("Карта")
        .edgesIgnoringSafeArea(.all)
    }
}

#Preview {
    MapView()
}
