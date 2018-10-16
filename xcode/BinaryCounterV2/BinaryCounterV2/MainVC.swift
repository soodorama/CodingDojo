//
//  ViewController.swift
//  BinaryCounterV2
//
//  Created by Neil Sood on 9/12/18.
//  Copyright © 2018 Neil Sood. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var binaryLabel: UILabel!
    
    var cells = [Int]()
    var cellAmts = [Int]()
    
    @IBAction func plusPressed(_ sender: UIButton) {
    }
    
    @IBAction func minusPressed(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func populateCells() {
        var num = 1
        for _ in 0..<16 {
            cells.append(num)
            num *= 10
            cellAmts.append(0)
        }
        
    }

}

