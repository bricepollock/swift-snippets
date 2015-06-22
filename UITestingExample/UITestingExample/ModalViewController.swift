//
//  ModalViewController.swift
//  UITestingExample
//
//  Created by Brice Pollock on 6/12/15.
//  Copyright (c) 2015 Brice Pollock. All rights reserved.
//

import Foundation
import UIKit

class ModalViewController: UIViewController {
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    static func createInstance() -> ModalViewController {
        let moduleStoryboard = UIStoryboard(name: "Main", bundle: NSBundle(forClass: ModalViewController.self))
        let newViewControllerInstance = moduleStoryboard.instantiateViewControllerWithIdentifier("ModalViewController") as! ModalViewController
        return newViewControllerInstance
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addGestureRecognizer(UIPinchGestureRecognizer(target: self, action: Selector("didPinchView:")))
        slider.setValue(0.5, animated: false)
        sliderValueDidChange(slider)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func didPinchView(gestureRecognizer: UIPinchGestureRecognizer?) {
        if let gestureRecognizer = gestureRecognizer {
            let direction = gestureRecognizer.velocity / abs(gestureRecognizer.velocity)
            let newValue = slider.value + Float(0.1 * direction)
            slider.setValue(newValue, animated: true)
            sliderValueDidChange(slider)
        }
    }
    
    @IBAction func sliderValueDidChange(sender: AnyObject) {
        let textValue = slider.value * 100
        sliderLabel.text = String(stringInterpolationSegment: textValue)
    }
    
    @IBAction func didTapExitButton(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
}

