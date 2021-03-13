//
//  ViewController.swift
//  CodeUI
//
//  Created by Lawrence on 3/12/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        let label = UILabel()
//        label.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
//        label.text = "Hello from code!"
        
//        let label = UILabel()
//        label.text = "Hello from code!"
//        view.addSubview(label)
//
//        label.translatesAutoresizingMaskIntoConstraints = false
//        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
//        label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 10).isActive = true
//        label.widthAnchor.constraint(equalToConstant: 300).isActive = true
//        label.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        // Challenge
        let label = UILabel()
        label.text = "Name:"
        view.addSubview(label)
        
        let textField = UITextField()
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            label.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 10),
            label.widthAnchor.constraint(equalToConstant: 50),
            
            textField.leftAnchor.constraint(equalTo: label.rightAnchor, constant: 10),
            textField.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: -20),
            textField.centerYAnchor.constraint(equalTo: label.centerYAnchor, constant: 0)
        ])
        
    }


}

