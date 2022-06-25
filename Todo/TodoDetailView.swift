//
//  TodoDetailView.swift
//  Todo
//
//  Created by T Krobot on 25/6/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @Binding var todo: Todo
    
    var body: some View {
        VStack {
            ZStack {
                HStack {
                    TextField("Type todo title", text: $todo.title)
                        .multilineTextAlignment(.center)
                        .font(.title2)
                }
            }
            .padding(10)
            .background(.quaternary)
            .padding(.init(top: 0, leading: 30, bottom: 0, trailing: 30))
            .cornerRadius(5)
            Button {
                todo.isCompleted.toggle()
            } label: {
                Text("Mark as \(todo.isCompleted ? "Incomplete" : "Complete")")
                    .padding()
                    .background(todo.isCompleted ? .pink : .teal)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
    }
}

struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView(todo: .constant(Todo(title: "Water the cat")))
    }
}
