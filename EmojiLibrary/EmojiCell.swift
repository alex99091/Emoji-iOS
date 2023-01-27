//
//  EmojiCell.swift
//  EmojiLibrary
//
//  Created by BOONGKI KWAK on 2023/01/27.
//

import UIKit

class EmojiCell: UICollectionViewCell {
    static let reuseIdentifier = String(describing: EmojiCell.self)
    
    @IBOutlet weak var emojiLabel: UILabel!
}
