//
//  Emoji.swift
//  TableViewAndSegues
//
//  Created by Anil Can on 15.04.2021.
//

import Foundation

struct Emoji {
    var character = ""
    var desc = ""
    var year = 0
    var rating = 0.0
    var category = ""
}

let emojiArray = ["🏎", "⛪️", "😦"]

func getEmojis() -> [Emoji] {
    let emoji1 = Emoji(character: "🏎", desc: "Race Car", year: 2020, rating: 4.1, category: "Vehicles")
    let emoji2 = Emoji(character: "⛪️", desc: "Church", year: 2020, rating: 5.0, category: "Religion")
    let emoji3 = Emoji(character: "😦", desc: "Sad Face", year: 2015, rating: 10.0, category: "Faces")
    
    return [emoji1, emoji2, emoji3]
}
