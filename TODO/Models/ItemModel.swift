//
//  ItemModel.swift
//  TODO
//
//  Created by Roberto Quadraccia on 04/10/2023.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    var isCompleted: Bool
}
