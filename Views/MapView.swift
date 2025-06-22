//
//  MapView.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 12.06.2025.
//

import SwiftUI
import MapKit
import _MapKit_SwiftUI

struct MapView: View {
    @StateObject private var locationManager = LocationManager()

    var body: some View {
        Group {
            if locationManager.hasLocation {
                Map(position: $locationManager.cameraPosition) {
                    UserAnnotation()
                }
                .mapControls {
                    MapUserLocationButton()
                    MapCompass()
                }
            } else {
                Text("Определяем местоположение...")
            }
        }
    }
}

