//
//  UIImageExtension.swift
//  extensions
//
//  Created by Wesley on 8/23/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

extension UIImage {
    class func create(withColor color: UIColor, size: CGSize) -> UIImage {
        UIGraphicsBeginImageContext(size)
        let rect = CGRect(origin: CGPoint.zero, size: size)
        if let context = UIGraphicsGetCurrentContext() {
            context.setFillColor(color.cgColor)
            context.fill(rect)
            let image = UIGraphicsGetImageFromCurrentImageContext()
            UIGraphicsEndImageContext()
            
            return image!
        } else {
            return UIImage()
        }
    }
}
