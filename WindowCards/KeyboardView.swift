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
            Rectangle()
                .foregroundColor(.clear)
            ForEach(0..<16) {_ in
                Spacer()}
            ZStack {
                VisualEffectView(style: .systemUltraThinMaterial)

                VStack {
                    HStack {
                        ForEach(1..<4) { num in
                            ZStack {
                                VisualEffectView(style: .systemUltraThinMaterial)
                                    .clipShape(Circle())
                                Text("\(num)")
                                    .font(.largeTitle)

                            }
                            .padding(5.0)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)

                        }
                    }

                    HStack {
                        ForEach(4..<7) { num in
                            ZStack {
                                VisualEffectView(style: .systemUltraThinMaterial)
                                    .clipShape(Circle())
                                Text("\(num)")
                                    .font(.largeTitle)

                            }
                            .padding(5.0)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)


                        }
                    }

                    HStack {
                        ForEach(7..<10) { num in
                            ZStack {
                                VisualEffectView(style: .systemUltraThinMaterial)
                                    .clipShape(Circle())
                                Text("\(num)")
                                    .font(.largeTitle)

                            }
                            .padding(5.0)
                            .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)


                        }
                    }
                    ZStack {
                        VisualEffectView(style: .systemUltraThinMaterial)
                            .clipShape(Circle())
                        
                        Text("0")
                            .font(.largeTitle)
                    }
                    .frame(alignment: .center)
                    .padding(5.0)
                    .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 2)



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
