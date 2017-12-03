//
//  ViewController.swift
//  ProgressBarFun
//
//  Created by Lin Cheng on 03/12/2017.
//  Copyright © 2017 Lin Cheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var progressBarView: ProgressBarView!
    
    @IBOutlet weak var silder: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func sliderMoved(_ sender: Any) {
        progressBarView.progess = CGFloat(silder.value)
    }
    
}

