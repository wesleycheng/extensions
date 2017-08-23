//
//  DateExtension.swift
//  extensions
//
//  Created by Wesley on 8/22/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

extension Date {
    //EEEE: 表示星期几(Monday),使用1-3个字母表示周几的缩写
    //MMMM: 月份的全写(August),使用1-3个字母表示月份的缩写
    //dd: 表示日期,使用一个字母表示没有前导0
    //YYYY: 四个数字的年份(2017)
    //HH: 两个数字表示的小时(01或10)
    //mm: 两个数字的分钟 (02或20)
    //ss: 两个数字的秒
    //zzz: 三个字母表示的时区
    func string(withFormat format: String = "YYYY-MM-dd HH:mm:ss") -> String {
        if self.timeIntervalSince1970 == 0 {
            return "--"
        } else {
            let formatter:DateFormatter = DateFormatter()
            formatter.dateFormat = format

            return formatter.string(from: self)
        }
    }
}
