//
//  ProgressBarDraw.swift
//  ProgressBarFun
//
//  Created by Lin Cheng on 03/12/2017.
//  Copyright © 2017 Lin Cheng. All rights reserved.
//

import UIKit

class ProgressBarDraw: NSObject {

    public class func drawProgressBar(frame: CGRect = CGRect(x: 0, y: 0, width: 300, height: 16), progress: CGFloat = 150) {
        
        // Color Declarations
        let color = UIColor(red: 0.847, green: 0.278, blue: 0.118, alpha: 1.000)
        
        // Progress Border Drawing
        let progressBorderPath = UIBezierPath(roundedRect: CGRect(x: frame.minX + 1, y: frame.minY + 1, width: floor((frame.width - 1) * 0.99666 + 0.5), height: 14), cornerRadius: 7)
        
        color.setStroke()
        progressBorderPath.lineWidth = 1
        progressBorderPath.stroke()
        
        // Progress Active Drawing
        let progressActivePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 1, width: progress, height: 14), cornerRadius: 7)
        color.setFill()
        progressActivePath.fill()
    }
}
