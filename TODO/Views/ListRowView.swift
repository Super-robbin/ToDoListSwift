//
//  ListRowView.swift
//  TODO
//
//  Created by Roberto Quadraccia on 03/10/2023.
//

import SwiftUI

struct ListRowView: View {
    
    @State var item: ItemModel
    
    
    var body: some View {
        HStack {
            Spacer()
            if item.isCompleted {
                Text(item.title)
                    .strikethrough()
                    .font(.body)
            } else {
                Text(item.title)
                    .font(.body)
            }
            Toggle(isOn: $item.isCompleted) {
            }.toggleStyle(.switch)
            Spacer()
        }
    }
}
