//
//  ViewController.swift
//  Swift App
//
//  Created by Mandeep Sarangal on 2018-03-16.
//  Copyright © 2018 Mandeep Sarangal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnChange: UIButton!
    
    @IBAction func onClickButton(_ sender: Any) {
        if self.newLabel.text == "jackass"{
            print("Love")
        }
        self.newLabel.text = "Mandeep Sarangal"
        print("Button tapped")
    }
    @IBOutlet weak var newLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor = UIColor.brown
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

