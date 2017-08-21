//
//  StringViewController.swift
//  extensions
//
//  Created by Wesley on 8/21/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

class StringViewController: UIViewController {
    @IBOutlet weak var contentLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "String"
        // Do any additional setup after loading the view.
        
        let content = "之所以会出现图1的情况是因为他将“xjhdhdhdhdhd......”这个字符串视为了一个“单词“, textView默认的排版是第一行文本容纳不下这个字符串的时候，自动换位第二行."
        let attr = content.attributes(color: UIColor.brown, font: UIFont.systemFont(ofSize: 16.0), lineSpacing: 10)
        contentLabel.border(borderWidth: 1, color: UIColor.blue)
        contentLabel.attributedText = attr.content
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
