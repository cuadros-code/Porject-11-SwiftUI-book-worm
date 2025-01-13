//
//  Student.swift
//  Porject-11-SwiftUI-book-worm
//
//  Created by Kevin Cuadros on 13/01/25.
//

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
