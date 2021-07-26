//
//  GameView.swift
//  WindowCards
//
//  Created by Vincio on 7/22/21.
//

import SwiftUI

struct GameView: View {
    @Binding var selectedDiffficulty: String
    var operatorSymbol: String
    var n1: Int
    var n2: Int
    var body: some View {
        VStack {
            Text(String(n1))
                .multilineTextAlignment(.trailing)
            Text(operatorSymbol)
                .multilineTextAlignment(.leading)
            Text(String(n2))
                .multilineTextAlignment(.trailing)
            Divider()
        }

    }


}




struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(selectedDiffficulty: .constant("A1"), operatorSymbol: "+", n1: 2, n2: 5)
    }
}
