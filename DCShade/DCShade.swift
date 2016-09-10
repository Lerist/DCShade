//
//  Sfumatura.swift
//  Sfumatura
//
//  Created by Diego Caridei on 10/09/16.
//  Copyright © 2016 Diego Caridei. All rights reserved.
//

import UIKit
@IBDesignable
class DCShade: UIView {
    let layerGradient = CAGradientLayer()
    
    @IBInspectable var strokeColor: UIColor = UIColor.blackColor() {
        didSet {
            configure()
        }
    }
    @IBInspectable var startColor: UIColor = UIColor.whiteColor() {
        didSet {
            configure()
        }
    }
    @IBInspectable var endColor: UIColor = UIColor.blackColor() {
        didSet {
            configure()
        }
    }
    
    
    func bluerEffect(styleBluer: UIBlurEffectStyle){
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            self.backgroundColor = UIColor.clearColor()
            
            let blurEffect = UIBlurEffect(style: styleBluer)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            blurEffectView.frame = self.bounds
            blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
            self.addSubview(blurEffectView)
        } else {
            self.backgroundColor = UIColor.blackColor()
        }
    }
    
    
    func configure() {
        layerGradient.colors = [startColor.CGColor, endColor.CGColor]
        layerGradient.locations = [ 0.0, 1.0]

    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        layerGradient.frame = self.frame
        layer.insertSublayer(layerGradient, atIndex: 0)
      
    }

}
