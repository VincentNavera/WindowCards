//
//  ContentView.swift
//  WindowCards
//
//  Created by Vincio on 7/21/21.
//

import SwiftUI

struct ContentView: View {
    @Binding var selectedDifficulty: String
    var body: some View {
        KeyboardView()
            .background(Image("background"))
    }

    func updateUI() {
        switch selectedDifficulty {
        case "A1": break
        case "A2": break
        case "A3": break
        case "S1": break
        case "S2": break
        case "S3": break
        case "M1": break
        case "M2": break
        case "M3": break
        case "D1": break
        case "D2": break
        case "D3": break
        default: break

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selectedDifficulty:.constant("A1"))
    }
}
