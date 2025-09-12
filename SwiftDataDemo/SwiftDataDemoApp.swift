//
//  SwiftDataDemoApp.swift
//  SwiftDataDemo
//
//  Created by Joseph Masson on 9/12/25.
//

import SwiftUI
//import SwiftData

@main
struct SwiftDataDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
//        .modelContainer(for: Note.self)
        //automatic create underlying database file, then load in the future
    }
}
