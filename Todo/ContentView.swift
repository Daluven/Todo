//
//  ContentView.swift
//  Todo
//
//  Created by T Krobot on 25/6/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var todos = [
        Todo(title: "Watch some SpyxFamily", isCompleted: true),
        Todo(title: "Get some points"),
        Todo(title: "Do my homework")
    ]
    
    var body: some View {
        NavigationView {
            List($todos) { $todo in
                NavigationLink {
                    TodoDetailView(todo: $todo)
                } label: {
                    HStack {
                        Image(systemName: todo.isCompleted ? "checkmark.circle.fill" : "circle")
                        Text(todo.title)
                            .strikethrough(todo.isCompleted)
                    }
                }
            }
            .navigationTitle("Todo List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

