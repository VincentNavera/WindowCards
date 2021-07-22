//
//  DifficultyView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct DifficultyView: View {
    var body: some View {
        ZStack{
            Rectangle()
//                .foregroundColor(Color(#colorLiteral(red: 0, green: 0.9810667634, blue: 0.5736914277, alpha: 1)))
                .foregroundColor(.clear)
                .background(Image("background")
                                .resizable()
                                
                                
                                )
                .ignoresSafeArea()

            ScrollView {
                LazyVStack {
                    ForEach(0..<6) {_ in
                        DifficultyCardView()
                            .padding()
                            .onTapGesture {

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
