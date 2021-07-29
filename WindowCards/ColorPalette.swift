//
//  ColorPalette.swift
//  WindowCards
//
//  Created by Vincio on 7/29/21.
//

import Foundation
import SwiftUI
struct  ColorPalette {
    @Environment(\.colorScheme) var colorScheme

    let baseColor = Color(.displayP3, red: 30/255, green: 17/255, blue: 44/255, opacity: 1.0)
    let secondaryColor = Color(#colorLiteral(red: 0.9629388452, green: 0.9352089167, blue: 0.9204978347, alpha: 1))
    let accentColor = Color(#colorLiteral(red: 1, green: 0.7157331705, blue: 0.2196805775, alpha: 1))
    let shadowColor = Color(.displayP3, red: 45/255, green: 26/255, blue: 88/255, opacity: 1.0)



}
