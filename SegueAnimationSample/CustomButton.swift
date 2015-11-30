//
//  CustomButton.swift
//  SegueAnimationSample
//
//  Created by pyngit on 2015/11/30.
//
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    @IBInspectable var textColor: UIColor?
    
    /**
     角丸を設定
    */
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    /**
     枠線の太さ設定
    */
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    /**
     枠線の色設定
     */
    @IBInspectable var borderColor: UIColor = UIColor.clearColor() {
        didSet {
            layer.borderColor = borderColor.CGColor
        }
    }
}