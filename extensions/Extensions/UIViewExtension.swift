//
//  UIViewExtension.swift
//  extensions
//
//  Created by Wesley on 8/21/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

extension UIView {
    enum BorderPosition {
        case Default
        case Top
        case Right
        case Bottom
        case Left
    }

    func border(borderWidth: CGFloat, color: UIColor, position: BorderPosition = .Default, size: CGSize? = nil, margin: CGFloat = 0) {
        if position == .Default {
            self.layer.borderColor = color.cgColor
            self.layer.borderWidth = borderWidth
        } else {
            let layer = CALayer()
            var width = size?.width ?? self.frame.width
            var height = size?.height ?? self.frame.height
            width = width > 0 ? width : self.frame.width
            height = height > 0 ? height : self.frame.height
            switch position {
            case .Top:
                layer.frame = CGRect(x: margin, y: 0, width: width - 2 * margin, height: borderWidth)
            case .Bottom:
                layer.frame = CGRect(x: margin, y: self.frame.height, width: width - 2 * margin, height: borderWidth)
            case .Left:
                layer.frame = CGRect(x: 0, y: margin, width: borderWidth, height: height - 2 * margin)
            case .Right:
                layer.frame = CGRect(x: width, y: margin, width: borderWidth, height: height)
            default:
                break
            }
            layer.backgroundColor = color.cgColor
            self.layer.addSublayer(layer)
        }
    }
    
    func roundedCorner(radius: CGFloat? = nil) {
        let radius = radius ?? min(self.frame.height, self.frame.width) / 2
        self.layer.cornerRadius = radius
        self.layer.masksToBounds = true
    }
}
