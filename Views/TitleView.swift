//
//  TitleView.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 29.05.2025.
//

import SwiftUI

struct TitleView: View {
    var body: some View {
        Text("Magellan")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.blue)
        
        Text("Выйди из зоны комфорта, \n ступив на тропу приключений!")
            .font(.body)
            .multilineTextAlignment(.center)
            .foregroundColor(.blue)
            .padding(.horizontal)    }
}

#Preview {
    TitleView()
}
