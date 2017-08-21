//
//  StringExtension.swift
//  extensions
//
//  Created by Wesley on 8/21/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

extension String {
    func attributes(color: UIColor, font: UIFont, lineSpacing: CGFloat = 0, alignment: NSTextAlignment = .left, maxWidth: CGFloat? = nil) -> (content: NSAttributedString, size: CGSize) {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.alignment = alignment
        
        let attributes = [
            NSAttributedStringKey.paragraphStyle : paragraphStyle,
            NSAttributedStringKey.font : font,
            NSAttributedStringKey.foregroundColor : color
        ]
        
        let attrStr = NSMutableAttributedString(string: self)
        attrStr.addAttributes(attributes, range: NSMakeRange(0, attrStr.length))
        
        var size = attrStr.size()
        if let width = maxWidth {
            size = self.boundingRect(
                with: CGSize(width: width, height: CGFloat.greatestFiniteMagnitude),
                options: NSStringDrawingOptions.usesLineFragmentOrigin,
                attributes: attributes,
                context: nil).size
        }

        return (attrStr, size)
    }
}
