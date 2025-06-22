//
//  ContentView.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 12.06.2025.
//
import SwiftUI

struct ContentView: View {
    @State private var hasStarted = false

    var body: some View {
        if hasStarted {
            MapView()
        } else {
            WelcomeView(hasStarted: $hasStarted)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
