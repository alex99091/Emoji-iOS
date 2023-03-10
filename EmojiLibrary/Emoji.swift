//
//  Emoji.swift
//  EmojiLibrary
//
//  Created by BOONGKI KWAK on 2023/01/27.
//

import Foundation

class Emoji {
    enum Category: String, CaseIterable {
        case smileysAndPeople = "Smileys & People"
        case animalsAndNature = "Animals & Nature"
        case foodAndDrink = "Food & Drink"
        case activity = "Activity"
        case travelAndPlaces = "Travel & Places"
        case objects = "Objects"
        case symbols = "Symbols"
        case flags = "Flags"
    }
    
    static let shared = Emoji()
    
    let sections = Category.allCases
    
    var data: [Category: [String]] = [
        .smileysAndPeople: ["ð", "ð", "ð", "ð", "ð", "ð", "ð", "ðĪĢ", "âšïļ", "ð", "ðĪŊ", "ð", "ð", "ð", "ðĪĐ", "ðī", "ðŽ", "ðĨĩ"],
        .animalsAndNature: ["ðķ", "ðą", "ðĶ", "ðŧ", "ðĶ", "ðŪ", "ðļ", "ðĩ", "ð", "ð§", "ðĶ", "ðī", "ðĶ", "ð", "ðŽ", "ð", "ðē", "ð"],
        .foodAndDrink:     ["ð", "ð", "ð", "ðĨ", "ð", "ð―", "ðĨ", "ðĨĻ", "ð§", "ð", "ðĶī", "ðŪ", "ðĢ", "ðĨĪ", "ðĨ", "ðĨ", "ðš", "ðŠ"],
        .activity:         ["â―ïļ", "ð", "ðĨ", "ð", "ðĨ", "ðđ", "ð·", "ðïļââïļ", "ð", "ðŠ", "ðŽ", "ðž", "ðē", "ðģ", "ðŪ", "ðļ", "ð§Đ", "ð"],
        .travelAndPlaces:  ["ð", "ð", "ðĻ", "ð ", "ð", "ð", "âïļ", "ðĪ", "ð§", "ð ", "âą", "ð", "âĐ", "ð", "âŠïļ", "ð ", "ð", "ð―"],
        .objects:          ["âïļ", "ðą", "ðē", "ðū", "âïļ", "ðš", "ðī", "ðĻ", "ð§°", "ð§ē", "ð", "ð", "âïļ", "ðģ", "ð", "ð", "ð", "ð°"],
        .symbols:          ["âĪïļ", "ð", "âŪïļ", "âŊïļ", "âĒïļ", "ð", "ð", "ð", "â", "ðŊ", "âžïļ", "ðļ", "âïļ", "âŋïļ", "ð", "ð", "âĢïļ", "ðļ"],
        .flags:            ["ðģïļ", "ðšðļ", "ðŊðĩ", "ðĐðŠ", "ðĻðĶ", "ðēð―", "ð§ð·", "ð°ðŠ", "ðģðŽ", "ðŪðģ", "ð·ðš", "ðĶðš", "ðŦð·", "ðĩðą", "ðŧðģ", "ðąðđ", "ðąð°", "ðŠðŠ"]
    ]
    
    private init() {}
    
    static func randomEmoji() -> (Category, String) {
        let extraEmoji = ["ð", "ðĪ", "ð", "ðĪðū", "ððž", "ðð―", "ððū", "ð", "ðĐð―âðĶą", "ðĐðŋ", "ð§ð―", "ðĩðŧââïļ", "ðĻðžâðŧ", "ð­", "ð§ðūââïļ", "ð"]
        let randomIndex = Int.random(in: 0..<extraEmoji.count)
        return (.smileysAndPeople, extraEmoji[randomIndex])
    }
    
    func emoji(at indexPath: IndexPath) -> String? {
        let category = sections[indexPath.section]
        return data[category]?[indexPath.item]
    }
}
