//
//  UIButtonExtension.swift
//  extensions
//
//  Created by Wesley on 8/23/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

extension UIButton {
    enum ContentAlignment {
        case Center
        case Left
        case Right
        case VerticalCenter
    }
    
    func content(alignment: ContentAlignment) {
        let width = self.frame.width
        var imageWidth = self.imageView?.frame.width ?? 0.0
        let space: CGFloat = imageWidth > 0 ? 5.0 : 0.0
        var imageHeight = self.imageView?.frame.height ?? 0.0
        if let isHidden = self.imageView?.isHidden, isHidden {
            imageWidth = 0.0
            imageHeight = 0.0
        }
        switch alignment {
        case .Center:
            self.contentHorizontalAlignment = .center
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        case .Left:
            self.contentHorizontalAlignment = .left
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        case .Right:
            self.contentHorizontalAlignment = .right
            self.imageEdgeInsets = UIEdgeInsets(top: 0, left: width - imageWidth, bottom: 0, right: 0)
            self.titleEdgeInsets = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: imageWidth > 0 ? imageWidth + space : 0)
        case .VerticalCenter:
            self.contentHorizontalAlignment = .center
            let titleWidth = self.titleLabel?.frame.width ?? 0
            let titleHeight = self.titleLabel?.frame.height ?? 0
            if imageHeight > 0 {
                self.imageEdgeInsets = UIEdgeInsets(top: -imageHeight / 2 - space, left: 0, bottom: 0, right: -titleWidth)
                self.titleEdgeInsets = UIEdgeInsets(top: 0, left: -imageWidth, bottom: -titleHeight - space, right: 0)
            }
        }
    }
}
