//
//  DefinitionViewController.swift
//  emoji-dicitionary
//
//  Created by NIPUN KANADE on 08/07/17.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = "No Emoji"

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var destinationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiLabel.text = emoji
        
        if(emoji == "🚤"){
            destinationLabel.text = "It's a speed boat"
        }
        if(emoji == "🚢"){
            destinationLabel.text = "It's a Ship"
        }
        if(emoji == "🗼"){
            destinationLabel.text = "It's a tower"
        }
        if(emoji == "🦆"){
            destinationLabel.text = "It's a Duck"
        }
        if(emoji == "🦋"){
            destinationLabel.text = "It's a Butterfly"
        }
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    

}
