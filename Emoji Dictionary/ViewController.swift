//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Nathan Glynn on 8/19/17.
//  Copyright © 2017 Nathan Glynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var mainTableView: UITableView!
    
    var emojiArray = ["😎","🤓","🤠","🤗","😜","😝","😛","😚","😍","😙","😗","😘","😱","🤢","👺","👹","💀","👻","☠️","😕","😖","😤","😳","🤔","✊","🦉","🐉"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    mainTableView.dataSource = self
    mainTableView.delegate = self
    }

    // this function says count the number of items in the array and use that for the umber of rows
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArray.count
    }
    
    // this function says create a constant (let cell = ...) for table cells and set the text label for the cell to be the indexPath.row
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojiArray[indexPath.row]
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

