//
//  BorderViewController.swift
//  extensions
//
//  Created by Wesley on 8/21/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

class BorderViewController: UIViewController {
    @IBOutlet weak var boderBottomLabel: UILabel!
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var roundedCornerView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "View Border"
        // Do any additional setup after loading the view.
        
        boderBottomLabel.border(borderWidth: 1, color: UIColor.black, position: .Bottom, size: CGSize(width: UIScreen.main.bounds.width - 30, height: 0))
        circleView.roundedCorner()
        roundedCornerView.roundedCorner(radius: 10)
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
