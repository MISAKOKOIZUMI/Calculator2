//
//  FirstViewController.swift
//  calculator2
//
//  Created by misako.k on 2017/01/19.
//  Copyright © 2017年 ffd. All rights reserved.

import UIKit
import Foundation

class FirstViewController: UIViewController {
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    var num1:String = ""
    var num2:String = ""
    var lbl1txt:String = ""
    var lbl2txt:String = ""
    var cal:Int = 0
    var calFlg:Int = 0
    var dotFlg:Int = 0
    
    //1
    @IBAction func btn1(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "1"
            lbl1txt += "1"
            lbl1.text = lbl1txt
        }else{
            num2 += "1"
            lbl1txt += "1"
            lbl1.text = lbl1txt
        }
    }
    
    //2
    @IBAction func btn2(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "2"
            lbl1txt += "2"
            lbl1.text = lbl1txt
        }else{
            num2 += "2"
            lbl1txt += "2"
            lbl1.text = lbl1txt
        }
    }
    
    //3
    @IBAction func btn3(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "3"
            lbl1txt += "3"
            lbl1.text = lbl1txt
        }else{
            num2 += "3"
            lbl1txt += "3"
            lbl1.text = lbl1txt
        }
    }
    
    //4
    @IBAction func btn4(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "4"
            lbl1txt += "4"
            lbl1.text = lbl1txt
        }else{
            num2 += "4"
            lbl1txt += "4"
            lbl1.text = lbl1txt
        }
    }
    
    //5
    @IBAction func btn5(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "5"
            lbl1txt += "5"
            lbl1.text = lbl1txt
        }else{
            num2 += "5"
            lbl1txt += "5"
            lbl1.text = lbl1txt
        }
    }
    
    //6
    @IBAction func btn6(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "6"
            lbl1txt += "6"
            lbl1.text = lbl1txt
        }else{
            num2 += "6"
            lbl1txt += "6"
            lbl1.text = lbl1txt
        }
    }
    
    //7
    @IBAction func btn7(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "7"
            lbl1txt += "7"
            lbl1.text = lbl1txt
        }else{
            num2 += "7"
            lbl1txt += "7"
            lbl1.text = lbl1txt
        }
    }
    
    //8
    @IBAction func btn8(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "8"
            lbl1txt += "8"
            lbl1.text = lbl1txt
        }else{
            num2 += "8"
            lbl1txt += "8"
            lbl1.text = lbl1txt
        }
    }
    
    //9
    @IBAction func btn9(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            num1 += "9"
            lbl1txt += "9"
            lbl1.text = lbl1txt
        }else{
            num2 += "9"
            lbl1txt += "9"
            lbl1.text = lbl1txt
        }
    }
    
    //0
    @IBAction func btn0(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        calFlg = 0
        if cal == 0 {
            if num1 != "" {
                num1 += "0"
                lbl1txt += "0"
                lbl1.text = lbl1txt
            }
        }else{
            if num2 != ""{
                num2 += "0"
                lbl1txt += "0"
                lbl1.text = lbl1txt
            }
        }
    }
    
    //小数点ボタン
    @IBAction func dotbtn(_ sender: AnyObject) {
        lbl2.text = ""
        lbl2txt = ""
        if dotFlg == 0 {
            if cal == 0 {
                if num1 != ""{
                    num1 += "."
                    lbl1txt += "."
                    lbl1.text = lbl1txt
                    dotFlg = 1
                }
            }else{
                if num2 != ""{
                    num2 += "."
                    lbl1txt += "."
                    lbl1.text = lbl1txt
                    dotFlg = 1
                }
            }
        }
    }
    
    //プラスボタン
    @IBAction func btnpl(_ sender: AnyObject) {
        if calFlg == 0 {
            if num1 != "" {
                if cal == 0{
                    cal = 1
                    lbl1txt += "+"
                    lbl1.text = lbl1txt
                } else {
                    let temp = calculator (num1 ,numb2: num2 ,calc: cal)
                    num1 = String(temp)
                    num2 = ""
                    cal = 1
                    lbl1txt += "+"
                    lbl1.text = lbl1txt
                }
            }
        }
        calFlg = 1
        dotFlg = 0
    }
    
    //マイナスボタン
    @IBAction func btnmin(_ sender: AnyObject) {
        if calFlg == 0 {
            if num1 != "" {
                if cal == 0{
                    cal = 2
                    lbl1txt += "-"
                    lbl1.text = lbl1txt
                } else {
                    let temp = calculator (num1 ,numb2: num2 ,calc: cal)
                    num1 = String(temp)
                    num2 = ""
                    cal = 2
                    lbl1txt += "-"
                    lbl1.text = lbl1txt
                }
            }
        }
        calFlg = 1
        dotFlg = 0
    }
    
    //掛算ボタン
    @IBAction func btnby(_ sender: AnyObject) {
        if calFlg == 0 {
            if num1 != "" {
                if cal == 0{
                    cal = 3
                    lbl1txt += "×"
                    lbl1.text = lbl1txt
                } else {
                    let temp = calculator (num1 ,numb2: num2 ,calc: cal)
                    num1 = String(temp)
                    num2 = ""
                    cal = 3
                    lbl1txt += "×"
                    lbl1.text = lbl1txt
                }
            }
        }
        calFlg = 1
        dotFlg = 0
    }
    
    //割算ボタン
    @IBAction func btnde(_ sender: AnyObject) {
        if calFlg == 0 {
            if num1 != "" {
                if cal == 0{
                    cal = 4
                    lbl1txt += "÷"
                    lbl1.text = lbl1txt
                } else {
                    let temp = calculator (num1 ,numb2: num2 ,calc: cal)
                    num1 = String(temp)
                    num2 = ""
                    cal = 4
                    lbl1txt += "÷"
                    lbl1.text = lbl1txt
                }
            }
        }
        calFlg = 1
        dotFlg = 0
    }
    
    
    //イコールボタン
    @IBAction func btnmi(_ sender: AnyObject) {
        if num2 == "" {
            lbl2.text = num1
            lbl1.text = ""
        } else {
            if cal == 0 {
                lbl2.text = lbl1txt
                lbl1.text = ""
            } else {
                let hyouji = calculator (num1 ,numb2: num2 ,calc: cal)
                lbl2txt = lbl1txt
                lbl1.text = hyouji
                lbl2.text = lbl2txt + "=" + String(hyouji)
            }
        }
        lbl1txt = ""
        num1 = ""
        num2 = ""
        cal = 0
        calFlg = 0
        dotFlg = 0
    }
    
    //クリアボタン
    @IBAction func btncl(_ sender: AnyObject) {
        num1 = ""
        num2 = ""
        cal = 0
        calFlg = 0
        lbl1txt = ""
        lbl1.text = ""
        lbl2txt = ""
        lbl2.text = ""
        dotFlg = 0
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func calculator (_ numb1:String , numb2:String , calc:Int) -> String {
        var tmp:Double = 0
        var result:String = ""
        switch calc {
        case 1:
            tmp = Double(numb1)! + Double(numb2)!
            result = String(format: "%g", tmp)
            print(result)
            return result
        case 2:
            tmp = Double(numb1)! - Double(numb2)!
            result = String(format: "%g", tmp)
            return result
        case 3:
            tmp = Double(numb1)! * Double(numb2)!
            result = String(format: "%g", tmp)
            return result
        case 4:
            tmp = Double(numb1)! / Double(numb2)!
            result = String(format: "%g", tmp)
            return result
        default:
            return result
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}


