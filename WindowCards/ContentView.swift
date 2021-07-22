//
//  ContentView.swift
//  WindowCards
//
//  Created by Vincio on 7/21/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        KeyboardView()
            .background(Image("background"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
