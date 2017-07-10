//
//  DefinitionViewController.swift
//  emoji-dicitionary
//
//  Created by NIPUN KANADE on 08/07/17.
//  Copyright © 2017 ThoughtWorks. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var emoji = Emoji()

    @IBOutlet weak var emojiLabel: UILabel!
    
    @IBOutlet weak var destinationLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.emojiIcon
        destinationLabel.text = emoji.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
