//
//  ViewController.swift
//  Swift App
//
//  Created by Mandeep Sarangal on 2018-03-16.
//  Copyright © 2018 Mandeep Sarangal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var emojiArrays : [Emoji] = []
    
    func makeEmojiArray() -> [Emoji] {
        var emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        
        var emoji2 = Emoji()
        emoji2.stringEmoji = "😶"
        
        var emoji3 = Emoji()
        emoji3.stringEmoji = "😬"
        
        var emoji4 = Emoji()
        emoji4.stringEmoji = "🖕"
        
        var emoji5 = Emoji()
        emoji5.stringEmoji = "💪"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiArrays.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = UITableViewCell()
        let emoji = emojiArrays[indexPath.row]
        mCell.textLabel?.text = emoji.stringEmoji
        return mCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojiArrays[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji.stringEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVc = segue.destination as! SecondViewController
        detailsVc.currentEmoji = sender as! String
        //This is where the connection between two different View controllers is made.
    }
    @IBOutlet weak var tblViewOne: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emojiArrays = makeEmojiArray()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.brown
        tblViewOne.dataSource = self
        tblViewOne.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

