//
//  ViewController.swift
//  ios-uikit-uitextfield-demo
//
//  Created by Manami Ichikawa on 5/16/17.
//  Copyright © 2017 Manami Ichikawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate{

    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        textField.delegate = self
        
        setupPlaceholder()
        setupBackgroundColor()
        setupClearButtonMode()
}

//MARK:-Option
    
    private func setupPlaceholder(){
        
        textField.placeholder = "テキストを入力"
    }
    
    private func setupBackgroundColor(){
        
        textField.backgroundColor = UIColor(white: 0.9, alpha: 1)
    }
    
    //右側に削除ボタン設置
    private func setupClearButtonMode(){
    
        textField.clearButtonMode = .always;
    
    }
    
    private func closeKeyBoard(){
    
        textField.resignFirstResponder()
        
    }

// MARK: UITextFieldDelegate
    
    //returnが押された時
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShouldReturn")
        
        closeKeyBoard()
        return true
    }
    //returnが押された時、textFieldShouldReturnの後
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldEndEditing")
        return true
    }
    
    //returnが押された時、textFieldShouldReturnの後
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("textFieldDidEndEditing")
    }
    
    //buildした時とreturn後、カーソルが当たった時
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        print("textFieldShouldBeginEditing")
        return true
    }
    //buildした時とreturn後、カーソルが当たった時textFieldShouldBeginEditingの後
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    //設置したclearButtonが押された時に呼ばれる
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        print("textFieldShouldClear")
        return true

    }




}

