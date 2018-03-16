//
//  SecondViewController.swift
//  Swift App
//
//  Created by Mandeep Sarangal on 2018-03-16.
//  Copyright © 2018 Mandeep Sarangal. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var currentEmoji = "No Emoji"
    
    @IBOutlet weak var labelEmoji: UILabel!

    @IBAction func onClickNext(_ sender: Any) {
        performSegue(withIdentifier: "secondToThird", sender: currentEmoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let thirdVc = segue.destination as! ThirdViewController
        thirdVc.emo = sender as! String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelEmoji.text = currentEmoji;
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
