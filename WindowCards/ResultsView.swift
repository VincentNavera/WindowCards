//
//  ResultsView.swift
//  WindowCards
//
//  Created by Vincio on 7/29/21.
//

import SwiftUI

struct ResultsView: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        let background = colorScheme == .dark ? ColorPalette().blue : ColorPalette().white
        ZStack {
            background
                .ignoresSafeArea()
            VStack {
                Text("Results")
                    .font(.largeTitle)
                    .padding()
                Spacer()

                VStack(alignment: .leading){
                    HStack {
                        Text("2 + 2 = 4")

                        Image(systemName: "checkmark")
                            .foregroundColor(.green)
                    }
                    .foregroundColor(ColorPalette().white)
                    HStack {
                        Text("2 + 3 = 6")
                        Image(systemName: "xmark")
                            .foregroundColor(.red)
                        Text("5")
                            .opacity(0.7)
                    }

                }
                Spacer()



            }

            .foregroundColor(ColorPalette().white)
        }

    }
}

struct ResultsView_Previews: PreviewProvider {
    static var previews: some View {
        ResultsView()
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.light)
        ResultsView()
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
