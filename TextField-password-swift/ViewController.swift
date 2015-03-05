//
//  ViewController.swift
//  TextField-password-swift
//
//  Created by 加藤 周 on 2015/03/05.
//  Copyright (c) 2015年 mycompany. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // 背景をオレンジ色に設定.
        self.view.backgroundColor = UIColor.orangeColor()
        

        // Delegateを設定.
        myTextField.delegate = self
        
        // 枠の線を表示.
        myTextField.borderStyle = UITextBorderStyle.RoundedRect
        
        // UITextFieldの表示する位置.
        myTextField.layer.position = CGPointMake(self.view.bounds.width/2, 100)
        
        // 入力された文字を非表示モードにする.
        myTextField.secureTextEntry = true
        


        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func go(sender: AnyObject) {
        label.text=myTextField.text
    }

}

