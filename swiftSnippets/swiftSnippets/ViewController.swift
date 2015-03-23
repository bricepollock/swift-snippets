//
//  ViewController.swift
//  swiftSnippets
//
//  Created by Personal on 3/22/15.
//
//

import UIKit
import BPFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let optionalOne: Int? = 1
        let optionalTwo: Int? = 4
        print("The max is: \(max(optionalOne, optionalTwo))")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

