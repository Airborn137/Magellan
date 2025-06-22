
//
//  LocationManager.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 19.06.2025.
//

import Foundation
import CoreLocation
import MapKit
import _MapKit_SwiftUI

@MainActor
class LocationManager: NSObject, ObservableObject, CLLocationManagerDelegate {
    private let manager = CLLocationManager()

    @Published var hasLocation = false
    @Published var cameraPosition: MapCameraPosition = .automatic

    override init() {
        super.init()
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    }

    nonisolated func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }

        DispatchQueue.main.async {
            self.hasLocation = true
            let coordinate = location.coordinate
            let region = MKCoordinateRegion(
                center: coordinate,
                latitudinalMeters: 1000,
                longitudinalMeters: 1000
            )
            self.cameraPosition = MapCameraPosition.region(region)
        }
    }
}
