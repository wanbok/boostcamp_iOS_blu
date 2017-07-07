//
//  ViewController.swift
//  week2
//
//  Created by BLU on 2017. 7. 6..
//  Copyright © 2017년 futr_blu. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet private weak var idTextField: UITextField!
    @IBOutlet private weak var pwTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(
            target: self,
            action: #selector(viewDidTap))
        self.view.addGestureRecognizer(gesture)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    func viewDidTap() {
        self.view.endEditing(true)
    }
    
    @IBAction private func signinButtonDidPress(_ sender: UIButton) {
        guard let idText = idTextField.text,
            !idText.isEmpty
            else {
                return
            }
        guard let pwText = pwTextField.text,
            !pwText.isEmpty
            else {
                return
            }
        print("ID : \(idText), PW : \(pwText)")
    }
    @IBAction private func signupButtonDidPress(_ sender: UIButton) {
        self.performSegue(withIdentifier: "signup", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let sender = segue.destination as! SignupViewController
    }
    
    
}

