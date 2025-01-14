#  SwiftData

## step by step

- Create model 
```swift
import Foundation
import SwiftData

@Model
class Student {
    var id: UUID
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
}

```

- Add model container to View
```swift
.modelContainer(for: Student.self)
```

- Use model context and Query to use data from SwiftData
```swift
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
```
