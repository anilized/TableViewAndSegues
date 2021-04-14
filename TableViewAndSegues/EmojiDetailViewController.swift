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
    
    var emoji = "✈️"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        blowUpEmojiLabel.text = emoji
        
        // let emojiArray = ["🏎", "⛪️", "😦"]
        
        if emoji == "🏎" {
            emojiDescLabel.text = "Wow such a cool swift racing car."
        }
        if emoji == "⛪️" {
            emojiDescLabel.text = "It's a fancy church."
        }
        if emoji == "😦" {
            emojiDescLabel.text = "I'm sad 2nite."
        }
    }
    

}
