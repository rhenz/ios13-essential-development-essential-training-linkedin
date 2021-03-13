//
//  ViewController.swift
//  TableViews
//
//  Created by Lawrence on 3/12/21.
//

import UIKit

class ViewController: UIViewController {
    
    var text: String = ""

    @IBOutlet weak var myTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myTextView.text = text
    }


}

