//
//  DifficultyCardView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct DifficultyCardView: View {
    @Environment(\.colorScheme) var colorScheme
    var cardTitle: String
    var cardSubtitle: String
    var body: some View {
        let shadowColor = colorScheme == .dark ? ColorPalette().dshadowColor : ColorPalette().lShadowColor


        ZStack {
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .foregroundColor(colorScheme == .dark ? ColorPalette().blue : ColorPalette().orange)
            VStack {
                Text(cardTitle)
                    .font(.largeTitle)

                Text(cardSubtitle)
                    .font(.subheadline)
            }
            .foregroundColor(ColorPalette().white)
        }
        .frame(height: 200)
        .shadow(color: shadowColor, radius: 25)
        .padding(.horizontal, 50)
    }
}

struct DifficultyCardView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyCardView(cardTitle: "A1", cardSubtitle: "Addition (1 digit)")
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.light)
        DifficultyCardView(cardTitle: "A1", cardSubtitle: "Addition (1 digit)")
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
