//
//  SignupViewController.swift
//  week2
//
//  Created by BLU on 2017. 7. 7..
//  Copyright © 2017년 futr_blu. All rights reserved.
//

import UIKit

class SignupViewController: UIViewController {
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwdTextField: UITextField!
    @IBOutlet weak var doublepasswdTextField: UITextField!
    
    @IBOutlet private weak var profileImageView: UIImageView! {
        didSet {
            profileImageView.isUserInteractionEnabled = true
            if (profileImageView.image == nil) {
                profileImageView.backgroundColor = UIColor.lightGray
            }
        }
    }
    
    @IBOutlet private weak var textView: UITextView! {
        didSet {
            textView.text = ""
            textView.backgroundColor = UIColor.cyan
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let gesture = UITapGestureRecognizer(
            target: self,
            action: #selector(profileImageViewDidTap)
        )
        self.view.addGestureRecognizer(gesture)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func profileImageViewDidTap() {
        
    }
    
    @IBAction private func unwindToLogin(_ sender: UIButton) {
        if sender.titleLabel?.text == "Sign Up" {
            if (idTextField.text?.isEmpty ?? true) {
                return
            }
            
            guard let password = passwdTextField.text
                else {
                    return
                }
            guard let double_password = doublepasswdTextField.text
                else {
                    return
                }
            if !(password == double_password) {
                return
            }
            
        }
        
        dismiss(
            animated: true,
            completion: nil
        )
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
