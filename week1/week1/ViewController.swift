//
//  ViewController.swift
//  week1
//
//  Created by BLU on 2017. 6. 30..
//  Copyright © 2017년 futr_blu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func signinButtonDidTap(_ sender: UIButton) {
        guard let idText = idTextField.text,
            !idText.isEmpty else {
            return
        }
        guard let pwText = pwTextField.text,
            !pwText.isEmpty else {
            return
        }
        print("ID : \(idText), PW : \(pwText)")
    }
    @IBAction func signupButtonDidTap(_ sender: UIButton) {
        print("touch up inside - sign up")
    }
}
