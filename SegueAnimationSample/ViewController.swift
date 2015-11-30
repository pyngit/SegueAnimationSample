//
//  ViewController.swift
//  SegueAnimationSample
//
//  Created by pyngit on 2015/11/30.
//
//

import UIKit;

class ViewController: UIViewController {
    private let SEGUE_ID_COVER_VERTICAL:String = "toCoverVertical";
    private let SEGUE_ID_CROSS_DISSOLOVE:String = "toCrossDissolve";
    private let SEGUE_ID_FLIP_HORIZONAL:String = "toFlipHorizontal";
    private let SEGUE_ID_PARTIAL_CURL:String = "toPartialCurl";


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    /**
     下から切り替わる
    */
    @IBAction func onCoverVerticalBtn(){
        performSegueWithIdentifier(SEGUE_ID_COVER_VERTICAL,sender: nil)
    }
    /**
     暗くなって切り替わる
    */
    @IBAction func onCrossDissolvetn(){
        performSegueWithIdentifier(SEGUE_ID_CROSS_DISSOLOVE,sender: nil)
    }
    /**
     回って切り替わる
    */
    @IBAction func onFlipHorizontalBtn(){
        performSegueWithIdentifier(SEGUE_ID_FLIP_HORIZONAL,sender: nil)
    }
    /**
     紙をめくるように切り替わる
    */
    @IBAction func onPartialCurlBtn(){
        performSegueWithIdentifier(SEGUE_ID_PARTIAL_CURL,sender: nil)
    }
    
    // Segue 準備
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        print("prepareForSegue segue id: \(segue.identifier) sender:\(sender)");
        let vc:UIViewController = segue.destinationViewController
        if (segue.identifier == SEGUE_ID_CROSS_DISSOLOVE) {
            
            vc.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve;
        }else if(segue.identifier == SEGUE_ID_FLIP_HORIZONAL){
            
            vc.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal;
        }else if(segue.identifier == SEGUE_ID_PARTIAL_CURL){
            
            vc.modalTransitionStyle = UIModalTransitionStyle.PartialCurl;
        }else{
            //デフォルトの画面遷移
//            vc.modalTransitionStyle = UIModalTransitionStyle.CoverVertical;
        }
    }


}

