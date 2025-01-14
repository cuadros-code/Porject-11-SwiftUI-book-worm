//
//  ContentView.swift
//  Porject-11-SwiftUI-book-worm
//
//  Created by Kevin Cuadros on 11/01/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) var modelContext
    @Query var students: [Student]
    
    var body: some View {
        NavigationStack {
           
        }
    }
}

#Preview {
    ContentView()
}
