//
//  EmojiTableViewController.swift
//  TableViewAndSegues
//
//  Created by Anil Can on 14.04.2021.
//

import UIKit

class EmojiTableViewController: UITableViewController {

    let emojiArray = ["🏎", "⛪️", "😦"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    // MARK: - How many rows?

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return emojiArray.count
    }

    
    // MARK: - What goes in each row?
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)

        // Configure the cell with emoji and it's system name
        
        cell.textLabel?.text = "\(emojiArray[indexPath.row]) \(emojiArray[indexPath.row].unicodeScalars.first!.properties.name!.capitalized)"

        return cell
    }
    
    
    //MARK: - Adding Segue for detail screen of selected Table View cell
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // Performing segue and passing data with sender
        let currentEmoji = emojiArray[indexPath.row]
        performSegue(withIdentifier: "DefSegue", sender: currentEmoji)
    }
    
    //MARK: - Sending data to EmojiDetailViewController
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let descVC = segue.destination as! EmojiDetailViewController
        let currentEmoji = sender as! String
        descVC.emoji = currentEmoji
    }

}
