//
//  Porject_11_SwiftUI_book_wormApp.swift
//  Porject-11-SwiftUI-book-worm
//
//  Created by Kevin Cuadros on 11/01/25.
//

import SwiftUI
import SwiftData

@main
struct Porject_11_SwiftUI_book_wormApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Student.self)
    }
}
