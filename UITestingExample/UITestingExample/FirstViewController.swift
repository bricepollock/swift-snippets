//
//  FirstViewController.swift
//  UITestingExample
//
//  Created by Brice Pollock on 6/12/15.
//  Copyright (c) 2015 Brice Pollock. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var secondaryText: UILabel!
    @IBOutlet weak var presentModalButton: UIButton!
    @IBOutlet weak var dynamicButton: UIButton!
    
    let normalText = "Press Me"
    let selectedText = "I was pressed"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dynamicButton.setTitle(normalText, forState: .Normal)
        dynamicButton.setTitle(selectedText, forState: .Selected)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapPresentModal(sender: AnyObject) {
        let newController = ModalViewController.createInstance()
        presentViewController(newController, animated: true, completion: nil)
    }
    
    @IBAction func didTapDynamicButton(sender: AnyObject) {
        dynamicButton.selected = !dynamicButton.selected
    }
}

