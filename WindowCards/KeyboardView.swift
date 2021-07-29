//
//  KeyboardView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct KeyboardView: View {
    @Environment(\.colorScheme) var colorScheme
    @State private var input: Int?
    var body: some View {
        let shadowColor = colorScheme == .dark ? ColorPalette().dshadowColor : ColorPalette().lShadowColor2

        ZStack {
            Rectangle()
                .overlay(colorScheme == .dark ? ColorPalette().blue.opacity(25) : ColorPalette().orange)

            VStack {
                HStack {
                    ForEach(1..<4) { num in
                        ZStack {
                            ColorPalette().accentColor
                                .clipShape(Circle())
                                .shadow(color: shadowColor, radius: 4)
                            Text("\(num)")
                                .font(.largeTitle)
                                .foregroundColor(ColorPalette().blue)

                        }
                        .padding(5.0)


                    }
                }

                HStack {
                    ForEach(4..<7) { num in
                        ZStack {
                            ColorPalette().accentColor
                                .clipShape(Circle())
                                .shadow(color: shadowColor, radius: 4)
                            Text("\(num)")
                                .font(.largeTitle)
                                .foregroundColor(ColorPalette().blue)

                        }
                        .padding(5.0)



                    }
                }

                HStack {
                    ForEach(7..<10) { num in
                        ZStack {
                            ColorPalette().accentColor
                                .clipShape(Circle())
                                .shadow(color: shadowColor, radius: 4)
                            Text("\(num)")
                                .font(.largeTitle)
                                .foregroundColor(ColorPalette().blue)

                        }
                        .padding(5.0)



                    }
                }
                HStack {
                    ZStack {
                        Color(.clear)
                            .clipShape(Circle())

                        Image(systemName: "delete.left.fill")
                            .font(.largeTitle)
                            .foregroundColor(ColorPalette().white)
                    }
                    .frame(alignment: .center)
                    .padding(5.0)



                    ZStack {
                        ColorPalette().accentColor
                            .clipShape(Circle())
                            .shadow(color: shadowColor, radius: 4)

                        Text("0")
                            .font(.largeTitle)
                            .foregroundColor(ColorPalette().blue)
                    }
                    .frame(alignment: .center)
                    .padding(5.0)


                    ZStack {
                        Color(.clear)
                            .clipShape(Circle())

                        Text("Submit")
                            .font(.title2)
                            .foregroundColor(ColorPalette().white)
                    }
                    .frame(alignment: .center)
                    .padding(5.0)

                }



            }.padding(.all, 20.0)


        }


    }

}




struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.light)
        KeyboardView()
            .previewLayout(PreviewLayout.sizeThatFits)
            .preferredColorScheme(.dark)

    }
}
