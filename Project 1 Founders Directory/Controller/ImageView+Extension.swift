//
//  ImageView+Extension.swift
//  Project 1 Founders Directory
//
//  Created by Kyle Gill on 9/27/18.
//  Copyright © 2018 Kyle Gill. All rights reserved.
//

import UIKit

extension UIImageView {
    func applyBorder(width: CGFloat = 2.0) {
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = width
    }
    
    func applyCircleMask(radius: CGFloat? = nil) {
        if let givenRadius = radius {
            layer.cornerRadius = givenRadius
        } else {
            layer.cornerRadius = bounds.width / 2
        }
        
        layer.masksToBounds = true
    }
}
