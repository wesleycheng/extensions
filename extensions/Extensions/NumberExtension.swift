//
//  NumberExtension.swift
//  extensions
//
//  Created by Wesley on 8/22/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

extension Int {
    
}

extension Float {
    
}

extension Double {
    func toDate() -> Date {
        var timeInterval = self
        if String(format: "%.f", self).characters.count >= 13 {
            timeInterval = self / 1000
        }

        return Date(timeIntervalSince1970: timeInterval)
    }
    
    func countdown() -> (days: Int, hours: Int, minutes: Int, seconds: Int) {
        var result = (0, 0, 0 ,0)
        var timeInterval = self
        if String(format: "%.f", self).characters.count >= 13 {
            timeInterval = self / 1000
        }
        let currentTime = Date().timeIntervalSince1970
        let diff = Int(timeInterval - currentTime)
        
        if diff > 0 {
            let seconds = diff % 60
            let minutes = diff / 60 % 60
            let hours = diff / 60 / 60 % 24
            let days = diff / 60 / (60 * 24)
            result = (days, hours, minutes, seconds)
        }
        
        return result
    }
}
