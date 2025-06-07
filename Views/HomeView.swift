//
//  HomeView.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 01.06.2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                TitleView()
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                
                NavigationLink(destination: MapView()) {
                    Text("В путь!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }
                Spacer()
            }
            .padding()    }
    }
}
#Preview {
    HomeView()
}
