//
//  EmojiRatingView.swift
//  Porject-11-SwiftUI-book-worm
//
//  Created by Kevin Cuadros on 15/01/25.
//

import SwiftUI

struct EmojiRatingView: View {
    
    let rating: Int
    
    var body: some View {
        switch rating {
        case 1:
            Text("☹️")
        case 2:
            Text("🥱")
        case 3:
            Text("😐")
        case 4:
            Text("🙂")
        default:
            Text("🤯")
        }
    }
}

#Preview {
    EmojiRatingView(rating: 5)
}
