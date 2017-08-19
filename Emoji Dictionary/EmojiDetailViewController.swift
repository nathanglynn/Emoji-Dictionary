//
//  EmojiDetailViewController.swift
//  Emoji Dictionary
//
//  Created by Nathan Glynn on 8/19/17.
//  Copyright © 2017 Nathan Glynn. All rights reserved.
//

import UIKit

class EmojiDetailViewController: UIViewController {
    
    @IBOutlet weak var emojiZoom: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        emojiZoom.text = emoji
       emojiLabel.text = "NULL"
        
        if emoji == "😍" {
            emojiLabel.text = "hearts in eyes"
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
