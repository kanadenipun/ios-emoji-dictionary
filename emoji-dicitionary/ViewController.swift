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

    var emojis = ["🚤","🚢","🗼","🦆","🦋"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dictionaryTableView.dataSource = self as! UITableViewDataSource
        dictionaryTableView.delegate = self as! UITableViewDelegate
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "emojiSegue", sender: "Hello")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

