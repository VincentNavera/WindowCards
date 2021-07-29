//
//  WindowCardsApp.swift
//  WindowCards
//
//  Created by Vincio on 7/21/21.
//

import SwiftUI

@main
struct WindowCardsApp: App {
    var body: some Scene {
        WindowGroup {
//            KeyboardView()
            ContentView(selectedDifficulty:.constant("A1"))
        }
    }
}
