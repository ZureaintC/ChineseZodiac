//
//  ViewController.swift
//  ChineseZodiac
//
//  Created by 付晨 on 16/8/3.
//  Copyright © 2016年 付晨. All rights reserved.
//

import UIKit
let offset = 4
class ViewController: UIViewController {

    @IBOutlet weak var yearOfBirth: UITextField!
    @IBOutlet weak var image: UIImageView!
    @IBAction func okTap(se nder: AnyObject) {
        yearOfBirth.resignFirstResponder()
        var birth: Int?
        if let text = yearOfBirth.text{
            birth = Int(text)
        }
        if let birth = birth{
            let imageNumber: Int = (birth - offset)%12
            image.image = UIImage(named: String(imageNumber))
        }
    }
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        yearOfBirth.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
