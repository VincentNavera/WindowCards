//
//  KeyboardView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct KeyboardView: View {
    @State private var input: Int?
    var body: some View {
        VStack {

            Spacer(minLength: 125)
            ZStack {
                Rectangle()
                    .overlay(ColorPalette().baseColor.opacity(25))

                VStack {
                    HStack {
                        ForEach(1..<4) { num in
                            ZStack {
                                ColorPalette().accentColor
                                    .clipShape(Circle())
                                Text("\(num)")
                                    .font(.largeTitle)
                                    .foregroundColor(ColorPalette().baseColor)

                            }
                            .padding(5.0)
                            .shadow(color: ColorPalette().shadowColor, radius: 25)

                        }
                    }

                    HStack {
                        ForEach(4..<7) { num in
                            ZStack {
                                ColorPalette().accentColor
                                    .clipShape(Circle())
                                Text("\(num)")
                                    .font(.largeTitle)
                                    .foregroundColor(ColorPalette().baseColor)

                            }
                            .padding(5.0)
                            .shadow(color: ColorPalette().shadowColor, radius: 25)


                        }
                    }

                    HStack {
                        ForEach(7..<10) { num in
                            ZStack {
                                ColorPalette().accentColor
                                    .clipShape(Circle())
                                Text("\(num)")
                                    .font(.largeTitle)
                                    .foregroundColor(ColorPalette().baseColor)

                            }
                            .padding(5.0)
                            .shadow(color: ColorPalette().shadowColor, radius: 25)


                        }
                    }
                    HStack {
                        ZStack {
                            Color(.clear)
                                .clipShape(Circle())

                            Image(systemName: "delete.left")
                                .font(.largeTitle)
                                .foregroundColor(ColorPalette().secondaryColor)
                        }
                        .frame(alignment: .center)
                        .padding(5.0)



                        ZStack {
                            ColorPalette().accentColor
                                .clipShape(Circle())

                            Text("0")
                                .font(.largeTitle)
                                .foregroundColor(ColorPalette().baseColor)
                        }
                        .frame(alignment: .center)
                        .padding(5.0)
                        .shadow(color: ColorPalette().shadowColor, radius: 25)

                        ZStack {
                            Color(.clear)
                                .clipShape(Circle())

                            Text("Submit")
                                .font(.title)
                                .foregroundColor(ColorPalette().secondaryColor)
                        }
                        .frame(alignment: .center)
                        .padding(5.0)

                    }



                }.padding(.all, 20.0)


            }
        }
        .ignoresSafeArea()

    }

}




struct KeyboardView_Previews: PreviewProvider {
    static var previews: some View {
        KeyboardView()
    }
}
