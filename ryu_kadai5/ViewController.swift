//
//  ViewController.swift
//  ryu_kadai5
//
//  Created by 辻野竜志 on 2023/05/04.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = "0.5"
    }
    
    @IBAction private func resultButton(_ sender: Any) {
        var number1 = Float(textField1.text ?? "")
        var number2 = Float(textField2.text ?? "")
        //AlertControllerの引数
        let title = "課題5"
        var message = ""
        
        if number1 == nil {
            message = "割られる数を入力して下さい"
        }else if number2 == nil {
            message = "割る数を入力して下さい"
        }else if number2 == 0 {
            message = "割る数には0を入力しないで下さい"
        }else {
            resultLabel.text = "\(number1! / number2!)"
        }
        
        if message != "" {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(ok)
            
            present(alert,animated: true, completion: nil)
        }
    }
}
