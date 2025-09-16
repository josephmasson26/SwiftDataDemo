//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Joseph Masson on 9/12/25.
//

import SwiftUI

struct ContentView: View {

    @State private var notes: [Note] = []

    var body: some View {
        NavigationView {
            VStack {
                List(notes) { note in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(note.title)
                            .font(.headline)
                        Text(note.text)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                    .listRowBackground(Color(.systemGray6))
                }
                .background(Color(.systemGray6))
                .navigationTitle("List of Notes")
            }
            .toolbar {
                Button("New Note") {
                    let note = Note(id: UUID(), title: "Note \(Int.random(in: 1...100))",
                        text: "This is note #\(Int.random(in: 1...1000))")
                    
                    
                    notes.append(note)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
