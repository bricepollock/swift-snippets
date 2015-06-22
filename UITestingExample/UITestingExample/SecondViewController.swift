//
//  SecondViewController.swift
//  UITestingExample
//
//  Created by Brice Pollock on 6/12/15.
//  Copyright (c) 2015 Brice Pollock. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var showAlertButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didTapShowAlertButton(sender: AnyObject) {
        let alertViewController = createErrorAlertController("Whoops!", message: "We messed up.")
        presentViewController(alertViewController, animated: true, completion: nil)
    }
    
    func createErrorAlertController(title: String?, message: String?, completion: (() -> ())? = nil) -> UIAlertController {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .Alert)
        let closeAction = UIAlertAction(title: "Okay", style: .Cancel, handler: { (action) -> Void in
            alert.dismissViewControllerAnimated(true, completion: nil)
            completion?()
        })
        alert.addAction(closeAction)
        
        return alert
    }
}

