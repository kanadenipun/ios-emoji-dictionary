//
//  ViewController.swift
//  emoji-dicitionary
//
//  Created by NIPUN KANADE on 08/07/17.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var dictionaryTableView: UITableView!

    var emojis : [Emoji]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dictionaryTableView.dataSource = self as UITableViewDataSource
        dictionaryTableView.delegate = self as UITableViewDelegate
        emojis = makeEmojis()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis?[indexPath.row].emojiIcon
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis?[indexPath.row]
        performSegue(withIdentifier: "emojiSegue", sender: emoji)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis!.count
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojis() -> [Emoji]{
        let emoji1 = Emoji()
        let emoji2 = Emoji()
        let emoji3 = Emoji()
        let emoji4 = Emoji()
        let emoji5 = Emoji()
    
        emoji1.emojiIcon = "😀"
        emoji1.description = "Smiley Face"
        
        emoji2.emojiIcon = "⛴"
        emoji2.description = "Ship"
        
        emoji3.emojiIcon = "🙏🏻"
        emoji3.description = "Hi Five"
        
        emoji4.emojiIcon = "🦋"
        emoji4.description = "Butterfly"
        
        emoji5.emojiIcon = "🦆"
        emoji5.description = "Duck Duck Go"
    
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
        
    }
}

