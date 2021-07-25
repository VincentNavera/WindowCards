//
//  Difficulties.swift
//  WindowCards
//
//  Created by Vincio on 7/26/21.
//

import Foundation

struct DifficultiesModel {

    var title: String
    var subtitle: String

}

struct Difficulties{


    var difficulties = [DifficultiesModel]()

    init() {
        difficulties.append(DifficultiesModel(title: "A1", subtitle: "Addition - 1 Digit"))
        difficulties.append(DifficultiesModel(title: "A2", subtitle: "Addition - 2 Digits"))
        difficulties.append(DifficultiesModel(title: "A3", subtitle: "Addition - 3 Digits"))
        difficulties.append(DifficultiesModel(title: "S1", subtitle: "Subtraction - 1 Digit"))
        difficulties.append(DifficultiesModel(title: "S2", subtitle: "Subtraction - 2 Digits"))
        difficulties.append(DifficultiesModel(title: "S3", subtitle: "Subtraction - 3 Digits"))
        difficulties.append(DifficultiesModel(title: "M1", subtitle: "Multiplication - 1 Digit"))
        difficulties.append(DifficultiesModel(title: "M2", subtitle: "Multiplication - 2 Digits"))
        difficulties.append(DifficultiesModel(title: "M3", subtitle: "Multiplication - 3 Digits"))
        difficulties.append(DifficultiesModel(title: "D1", subtitle: "Division - 1 Digit"))
        difficulties.append(DifficultiesModel(title: "D2", subtitle: "Division - 2 Digits"))
        difficulties.append(DifficultiesModel(title: "D3", subtitle: "Division - 3 Digits"))
    }


}
