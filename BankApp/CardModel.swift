//
//  CardModel.swift
//  BankApp
//
//  Created by Дмитрий Герасимов on 26.09.2023.
//

import Foundation
import SwiftUI

struct CardModel: Identifiable { // протокол Identifiable нужен для идентификации уникального объекта в коллекции; тип должен использовать id
    
    var id = UUID().uuidString
    var colors: [Color]
    
    static let colors: [CardModel] = [
        CardModel(colors: [Color("peachColor"), Color("lightBlue")]),
        CardModel(colors: [Color("lightIndigo"), Color("lightBlue")]),
        CardModel(colors: [Color("lightGreen"), Color("lightBlue")]),
        CardModel(colors: [Color("lightPink"), Color("lightBlue")])
    ]
}
