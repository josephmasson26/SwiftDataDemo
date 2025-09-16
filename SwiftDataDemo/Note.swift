//
//  Note.swift
//  SwiftDataDemo
//
//  Created by Joseph Masson on 9/12/25.
//
import SwiftUI


@Observable public class Note: Identifiable {
    public var id: UUID
    var title: String
    var text: String

    init(id: UUID, title: String, text: String) {
        self.id = id
        self.title = title
        self.text = text
    }
}
