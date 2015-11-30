//
//  ViewController.swift
//  SegueAnimationSample
//
//  Created by pyngit on 2015/11/30.
//
//

import UIKit;

class CoverVerticalVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /**
     
     */
    @IBAction func onBackBtn(segue: UIButton){
        //
        self.dismissViewControllerAnimated(true, completion:  nil);
    }
    
}

