//
//  WelcomeView.swift
//  Magellan
//
//  Created by Slava Ovchinnikov on 16.06.2025.
//
import SwiftUI

struct WelcomeView: View {
    @Binding var hasStarted: Bool

    var body: some View {
        VStack(spacing: 30) {
            Text("Magellan")
                .font(.largeTitle)
                .bold()

            Image(systemName: "globe")
                .resizable()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)

            Text("Выйди из зоны комфорта и ступи на тропу приключений!")
                .multilineTextAlignment(.center)
                .font(.title3)
                .padding(.horizontal)

            Button(action: {
                hasStarted = true
            }) {
                Text("В путь!")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("AccentColor"))
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding(.horizontal, 40)
        }
        .padding()
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView(hasStarted: .constant(false))
    }
}
