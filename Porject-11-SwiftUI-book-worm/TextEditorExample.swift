//
//  TextEditorExample.swift
//  Porject-11-SwiftUI-book-worm
//
//  Created by Kevin Cuadros on 12/01/25.
//

import SwiftUI

struct TextEditorExample: View {
    
    @AppStorage("notes") private var notes = ""
    
    var body: some View {
        NavigationStack {
            
            TextField("Enter your text", text: $notes, axis: .vertical)
                .padding()
        
            TextEditor(text: $notes)
                .navigationTitle("Notes")
                .padding()
        }
    }
}

#Preview {
    TextEditorExample()
}
