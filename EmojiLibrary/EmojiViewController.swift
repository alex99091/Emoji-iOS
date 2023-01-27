//
//  EmojiViewController.swift
//  EmojiLibrary
//
//  Created by BOONGKI KWAK on 2023/01/27.
//

import UIKit

class EmojiDetailController: UIViewController {
    
    var emoji: String? {
        didSet {
            if let label = textLabel {
                label.text = emoji
            }
        }
    }
    
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = emoji
    }
}
