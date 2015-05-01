//
//  ViewController.swift
//  Search demo
//
//  Created by James De Angelis on 30/04/2015.
//  Copyright (c) 2015 James De Angelis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var bottomView: UIImageView!
    @IBOutlet weak var topView: UIImageView!
    @IBOutlet weak var textView: UITextField!
    @IBOutlet weak var cancelButton: UIButton!
    
    var textFrame = CGRect()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        cancelButton.alpha = 0
        textFrame = textView.frame
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textEnded(sender: AnyObject) {
        UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.bottomView.center.y = self.bottomView.center.y - 130
            self.topView.center.y = self.topView.center.y - 130
//            self.textView.center.y = self.textView.center.y - 130
            self.textView.frame = CGRect(x: 33, y: 10, width: 300, height: 30)
            }, completion: nil)
        UIView.animateWithDuration(0.3, delay: 0.3, options: .CurveLinear, animations: { () -> Void in
            self.cancelButton.alpha = 1
        }, completion: nil)
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        cancelButton.alpha = 0
        UIView.animateWithDuration(0.3, delay: 0, options: .CurveEaseInOut, animations: { () -> Void in
            self.bottomView.center.y = self.bottomView.center.y + 130
            self.topView.center.y = self.topView.center.y + 130
            self.textView.frame = self.textFrame
            }, completion: nil)
        view.endEditing(true)
    }

}

