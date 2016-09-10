//
//  ViewController.swift
//  Sfumatura
//
//  Created by Diego Caridei on 10/09/16.
//  Copyright © 2016 Diego Caridei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var customView: DCShade!
    override func viewDidLoad() {
        super.viewDidLoad()
      customView.startColor = UIColor.brownColor()
      customView.endColor = UIColor.yellowColor()
      customView.bluerEffect(UIBlurEffectStyle.ExtraLight)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

