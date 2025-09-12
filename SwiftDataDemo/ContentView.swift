//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Joseph Masson on 9/12/25.
//

import SwiftUI
//import SwiftData

struct ContentView: View {
//    @Environment(\.modelContext) var modelContext //allows us to directly modify database
//    @Query var notes: [Note] //load from database file
    
    var body: some View {
        NavigationView {
            VStack {
                List(notes) {
                    note in Text(note.title)
                }
                .navigationTitle("List of Notes")
            }
            .toolbar {
                Button("New Note") {
                    let note = Note(id: UUID(), title: "NEW NOTE", text: "note text") //create new object
                    
//                    modelContext.insert(note)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
