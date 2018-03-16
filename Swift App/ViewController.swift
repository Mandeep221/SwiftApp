//
//  ViewController.swift
//  Swift App
//
//  Created by Mandeep Sarangal on 2018-03-16.
//  Copyright © 2018 Mandeep Sarangal. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var emojiArrays = ["😎", "😶", "😬", "🖕", "💪"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let mCell = UITableViewCell()
        mCell.textLabel?.text = emojiArrays[indexPath.row]
        return mCell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojiArrays[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVc = segue.destination as! SecondViewController
        detailsVc.currentEmoji = sender as! String
        //This is where the connection between two different View controllers is made.
    }
    @IBOutlet weak var tblViewOne: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
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

