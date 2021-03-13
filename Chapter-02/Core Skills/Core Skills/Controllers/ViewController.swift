//
//  ViewController.swift
//  Core Skills
//
//  Created by Lawrence on 3/8/21.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    
    // MARK: - View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.myLabel.text = "Changed with Code!"
        firstNameTextField.becomeFirstResponder()
        firstNameTextField.delegate = self
        lastNameTextField.delegate = self
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        self.setupTextFieldGreeting()
        self.view.endEditing(true)
    }
    
    private func setupTextFieldGreeting() {
        guard let firstName = self.firstNameTextField.text,
              let lastName = self.lastNameTextField.text
        else {
            return
        }
        
        self.myLabel.text = "Hello my name is \(firstName) \(lastName)"
    }
    
    // MARK: - Touch Events
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
}

// MARK: - Text Field Delegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
