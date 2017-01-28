//
//  SecondViewController.swift
//  calculator2
//
//  Created by misako.k on 2017/01/19.
//  Copyright © 2017年 ffd. All rights reserved.
//

import UIKit
import Foundation

class SecondViewController: UIViewController{
    
    @IBOutlet weak var offpertxt: UITextField!
    
    @IBOutlet weak var cost1: UITextField!
    @IBOutlet weak var cost2: UITextField!
    @IBOutlet weak var disco1: UITextField!
    @IBOutlet weak var disco2: UITextField!
    @IBOutlet weak var distotal: UITextField!
    
    @IBOutlet weak var totalCos: UILabel!
    
    var Cost01:Int = 0
    var Cost02:Int = 0
    var Disco01:Int = 0
    var Disco02:Int = 0
    var Distotal0:Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.cost1.keyboardType = UIKeyboardType.numberPad
        self.cost2.keyboardType = UIKeyboardType.numberPad
        self.disco1.keyboardType = UIKeyboardType.numberPad
        self.disco2.keyboardType = UIKeyboardType.numberPad
        self.distotal.keyboardType = UIKeyboardType.numberPad
        
        
    }
    @IBAction func btnPush(_ sender: Any) {
        Cost01 = Int(cost1.text!)!
        Cost02 = Int(cost2.text!)!
        Disco01 = Int(disco1.text!)!
        Disco02 = Int(disco2.text!)!
        Distotal0 = Int(distotal.text!)!
        let res = calc(co1: Cost01, co2: Cost02, dis1: Disco01, dis2:Disco02, dis3: Distotal0)
        totalCos.text = "¥ \(Int(res))"
    
    }
    
    func calc (co1:Int , co2:Int , dis1:Int , dis2:Int , dis3:Int) -> Double {
        var totalCost:Double = 0
        totalCost = (Double(co1) * ((100 - Double(dis1)) / 100) + Double(co2) * ((100 - Double(dis2)) / 100)) * ((100 - Double(dis3)) / 100)
        return totalCost
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
