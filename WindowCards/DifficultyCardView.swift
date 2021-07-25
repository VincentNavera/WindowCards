//
//  DifficultyCardView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct DifficultyCardView: View {
    var cardTitle: String
    var cardSubtitle: String
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .foregroundColor(.clear)
                .background(VisualEffectView(style: .systemMaterial)
                                .cornerRadius(25))
            VStack {
                Text(cardTitle)
                    .font(.largeTitle)

                Text(cardSubtitle)
                    .font(.subheadline)
            }
        }
        .frame(height: 200)
        .padding(.horizontal, 50)
    }
}

struct DifficultyCardView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyCardView(cardTitle: "A1", cardSubtitle: "Addition (1 digit)")
    }
}
