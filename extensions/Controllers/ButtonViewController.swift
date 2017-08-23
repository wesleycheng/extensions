//
//  ButtonViewController.swift
//  extensions
//
//  Created by Wesley on 8/23/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

class ButtonViewController: UIViewController {
    @IBOutlet weak var buttonCenter: UIButton!
    @IBOutlet weak var buttonLeft: UIButton!
    @IBOutlet weak var buttonRight: UIButton!
    @IBOutlet weak var buttonVerticalCenter: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Button"
        // Do any additional setup after loading the view.
        
        buttonCenter.content(alignment: .Center)
        buttonCenter.border(borderWidth: 1, color: UIColor.black)
        
        buttonLeft.content(alignment: .Left)
        buttonLeft.border(borderWidth: 1, color: UIColor.black)
        
        buttonRight.content(alignment: .Right)
        buttonRight.border(borderWidth: 1, color: UIColor.black)
        
        buttonVerticalCenter.setImage(UIImage.create(withColor: UIColor.blue, size: CGSize(width: 30, height: 20)), for: UIControlState.normal)
        buttonVerticalCenter.content(alignment: .VerticalCenter)
        buttonVerticalCenter.border(borderWidth: 1, color: UIColor.black)
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
