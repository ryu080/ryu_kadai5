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
        guard let number1 = Float(textField1.text ?? "") else {
            presentAlert(message: "割られる数を入力して下さい")
            return
        }

        guard let number2 = Float(textField2.text ?? "") else {
            presentAlert(message: "割る数を入力して下さい")
            return
        }

        guard number2 != 0 else {
            presentAlert(message: "割る数には0を入力しないで下さい")
            return
        }

        resultLabel.text = "\(number1 / number2)"
    }

    private func presentAlert(message: String) {
        let alert = UIAlertController(title: "課題5", message: message, preferredStyle: .alert)

        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(ok)

        present(alert,animated: true, completion: nil)
    }
}
