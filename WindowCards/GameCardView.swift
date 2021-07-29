//
//  GameView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct GameCardView: View {
    @Environment(\.colorScheme) var colorScheme
    @Binding var selectedDiffficulty: String
    var operatorSymbol: String
    var n1: Int
    var n2: Int
    var body: some View {
        let shadowColor = colorScheme == .dark ? ColorPalette().dshadowColor : ColorPalette().lShadowColor


        ZStack {
            RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                .foregroundColor(colorScheme == .dark ? ColorPalette().blue : ColorPalette().orange)
            HStack {
                Text(operatorSymbol)
                    .font(.largeTitle)
                    .fontWeight(.bold)

                VStack {
                    Text(String(n1))
                        .font(.largeTitle)
                        .fontWeight(.bold)


                    Text(String(n2))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                }

            }
            .foregroundColor(ColorPalette().white)

        }
        .shadow(color: shadowColor, radius: 25)
        .padding(.horizontal, 50)

    }


}




struct GameCardView_Previews: PreviewProvider {
    static var previews: some View {

        GameCardView(selectedDiffficulty: .constant("A1"), operatorSymbol: "+", n1: 2, n2: 5)
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.light)
        GameCardView(selectedDiffficulty: .constant("A1"), operatorSymbol: "+", n1: 2, n2: 5)
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
