//
//  ThirdViewController.swift
//  Swift App
//
//  Created by Mandeep Sarangal on 2018-03-16.
//  Copyright © 2018 Mandeep Sarangal. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var emo = ""
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = emo
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
