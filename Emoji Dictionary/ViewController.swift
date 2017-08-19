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
    
    // what happens when a table row is selected?
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       //this will deselect a thing after you move 'back'
        tableView.deselectRow(at: indexPath, animated: true)
        // create a constant, "emoji" that is the value of the selected row
        let emoji = emojiArray[indexPath.row]
        // perform the segue, "moveSegue" and send along the "emoji" constant
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    //what happens along with the segue?
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // create a constant, "detailVC" as the destination from the segue and use the "EmojiDetailViewController custom class to render it
        let detailVC = segue.destination as! EmojiDetailViewController
    // sets the value of the "emoji" variable defined in the "EmojiDetailViewController" to the "sender" defined in the 'didselectrowat" function above, "as! String" makes sure it is sent as a string
        detailVC.emoji = sender as! String
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

