//
//  ViewController.swift
//  CountUp
//
//  Created by 高橋 勲 on 2015/06/13.
//  Copyright © 2015年 高橋 勲. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var countButton: UIButton!
    
    var tappedCount :Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        countLabel.accessibilityIdentifier = "testLabel"
        
        displayTappedCount()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func displayTappedCount() {
        countLabel.text = String(tappedCount)
    }

    @IBAction func clickButton(sender: AnyObject) {
        tappedCount++;
        displayTappedCount()
    }
}

