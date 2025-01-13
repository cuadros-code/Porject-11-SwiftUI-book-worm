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
            List(students) { student in
                Text(student.name)
            }
            .navigationTitle("Classroom")
            .toolbar {
                Button("Add") {
                    let firstNames = ["Kevin", "Julio", "Luz"]
                    let lastNames = ["Mora", "Cuadros", "Ferrari"]
                    
                    let chosenFirstName = firstNames.randomElement()!
                    let chosenLastName = lastNames.randomElement()!
                    
                    let student = Student(
                        id: UUID(),
                        name: "\(chosenFirstName) \(chosenLastName)"
                    )
                    
                    modelContext.insert(student)
                    
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
