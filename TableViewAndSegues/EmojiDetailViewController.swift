//
//  EmojiDetailViewController.swift
//  TableViewAndSegues
//
//  Created by Anil Can on 14.04.2021.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    
    
    @IBOutlet weak var blowUpEmojiLabel: UILabel!
    
    @IBOutlet weak var emojiDescLabel: UILabel!
    
    var emoji: Emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blowUpEmojiLabel.text = emoji.character
        emojiDescLabel.text = "The \(emoji.character) emoji is a \(emoji.desc). It has made in \(emoji.year). It's in \(emoji.category) category. It has ration of \(emoji.rating)"
        // let emojiArray = ["🏎", "⛪️", "😦"]
        
        
    }
    

}
