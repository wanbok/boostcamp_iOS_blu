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
    @IBAction func signIn(_ sender: Any) {
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
    @IBAction func signUp(_ sender: Any) {
        print("touch up inside - sign up")
    }
}
