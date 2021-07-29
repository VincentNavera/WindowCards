//
//  DifficultyView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct DifficultyView: View {

    var difficulty = Difficulties()
    @State private var selectedDifficulty = ""

    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(.clear)
                .background(ColorPalette().baseColor)
                .ignoresSafeArea()

            ScrollView {
                VStack {
                    ForEach(0..<difficulty.difficulties.count) { option in
                        let options = difficulty.difficulties
                        DifficultyCardView(cardTitle: options[option].title, cardSubtitle: options[option].subtitle)
                            .padding()
                            .onTapGesture {
                                selectedDifficulty = options[option].title
                            }
                    }

                }
            }

            }
           


    }
}

struct DifficultyView_Previews: PreviewProvider {
    static var previews: some View {
        DifficultyView()
    }
}
