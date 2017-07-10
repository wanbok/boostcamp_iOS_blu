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
    {
        didSet {
            idTextField.layer.borderWidth = 0.5
            idTextField.layer.borderColor = UIColor.clear.cgColor
        }
    }
    @IBOutlet weak var passwdTextField: UITextField!
    {
        didSet {
            passwdTextField.isSecureTextEntry = true
            passwdTextField.layer.borderWidth = 0.5
            passwdTextField.layer.borderColor = UIColor.clear.cgColor
        }
    }
    @IBOutlet weak var double_passwdTextField: UITextField!
    {
        didSet {
            double_passwdTextField.isSecureTextEntry = true
            double_passwdTextField.layer.borderWidth = 0.5
            double_passwdTextField.layer.borderColor = UIColor.clear.cgColor
        }
    }
    
    @IBOutlet var profileImageView: UIImageView!
    {
        didSet {
            profileImageView.isUserInteractionEnabled = true
            if (profileImageView.image == nil) {
                profileImageView.backgroundColor = UIColor.lightGray
            }
        }
    }
    
    @IBOutlet weak var textView: UITextView! {
        didSet {
            textView.delegate = self
            textView.text = ""
            textView.backgroundColor = UIColor.cyan
        }
    }
    @IBOutlet weak var placeholderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.placeholderLabel.isHidden = !textView.text.isEmpty
        
        let gesture = UITapGestureRecognizer(
            target: self,
            action: #selector(updateProfile)
        )
        self.view.addGestureRecognizer(gesture)
        
        idTextField.addTarget(
            self,
            action: #selector(textFieldDidChange(textField:)
            ),
            for: .editingChanged
        )
        passwdTextField.addTarget(
            self,
            action: #selector(textFieldDidChange(textField:)
            ),
            for: .editingChanged
        )
        double_passwdTextField.addTarget(
            self,
            action: #selector(textFieldDidChange(textField:)
            ),
            for: .editingChanged
        )
        // Do any additional setup after loading the view.
    }

    func textFieldDidChange(textField: UITextField) {
        if (textField.text?.isEmpty ?? true) {
            textField.layer.borderColor = UIColor.red.cgColor
        } else {
            textField.layer.borderColor = UIColor.clear.cgColor
        }
    }
    
    @IBAction private func unwindToLogin(_ sender: UIButton) {
        if sender.titleLabel?.text == ButtonType.signup.rawValue {
            
            if (idTextField.text?.isEmpty ?? true) {
                idTextField.layer.borderColor = UIColor.red.cgColor
                return
            }
            
            guard let password = passwdTextField.text
                else {
                    passwdTextField.layer.borderColor = UIColor.red.cgColor
                    return
                }
            guard let double_password = double_passwdTextField.text
                else {
                    double_passwdTextField.layer.borderColor = UIColor.red.cgColor
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

}
extension SignupViewController : UITextViewDelegate {
    func textViewDidChange(_ textView: UITextView) {
        placeholderLabel.isHidden = !textView.text.isEmpty
    }
}

extension SignupViewController : UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func updateProfile() {
        let imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(
            imagePicker,
            animated: true,
            completion: nil
        )
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let image = info[UIImagePickerControllerEditedImage] {
            profileImageView.image = image as? UIImage
            profileImageView.backgroundColor = UIColor.clear
        }
        
        
        picker.dismiss(
            animated: true,
            completion: nil
        )
    }
}
