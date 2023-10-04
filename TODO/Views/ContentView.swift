//
//  ContentView.swift
//  TODO
//
//  Created by Roberto Quadraccia on 03/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State var newTask: String = ""
    @State var items: [ItemModel] = [
        ItemModel(title: "Go make dinner", isCompleted: false),
        ItemModel(title: "Go buy food", isCompleted: false),
        ItemModel(title: "Walk the dog", isCompleted: false)
    ]
    
    var body: some View {
        
        VStack {
            Image("Image")
                .resizable(resizingMode: .stretch)
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("To Do List📋")
                .font(.largeTitle)
            ForEach(items) {
                item in ListRowView(item: item)
            }
            HStack {
                TextField("Enter new task...", text: $newTask)
                    .background(Color.clear)
                Button(action: {
                    items.append(ItemModel(title: newTask, isCompleted: false))
                    newTask = ""
                }, label: {
                    Text("Add")
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .frame(width: 70, height: 45)
                }).background(Color.blue)
                    .cornerRadius(10)
            }.padding()}}
}
#Preview {
    ContentView()
}
