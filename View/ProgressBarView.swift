//
//  ProgressBarView.swift
//  ProgressBarFun
//
//  Created by Lin Cheng on 03/12/2017.
//  Copyright © 2017 Lin Cheng. All rights reserved.
//

import UIKit

class ProgressBarView: UIView {
    
    private var innerProgress: CGFloat = 0.0
    
    public var progess: CGFloat {
        set (newProgress) {
            if newProgress > 1.0 {
                innerProgress = 1.0
            } else if newProgress < 0.0 {
                innerProgress = 0.0
            } else {
                innerProgress = newProgress
            }
            
            setNeedsDisplay()
        }
        
        get {
            return innerProgress * bounds.width
        }
    }
    
    override func draw(_ rect: CGRect) {
        
        ProgressBarDraw.drawProgressBar(frame: bounds, progress: progess)
    }
    
}
