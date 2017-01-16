//
//  ViewController.swift
//  Simple Calculator
//
//  Created by Don Bytyqi on 1/16/17.
//  Copyright © 2017 Don Bytyqi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var inputNumber1: UITextField!
    
    var sum: (Double, Double) -> Double = { return $0 + $1 }
    var sub: (Double, Double) -> Double = { return $0 - $1 }
    var mult: (Double, Double) -> Double = { return $0 * $1 }
    var div: (Double, Double) -> Double = { return $0 / $1 }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        inputNumber.placeholder = "0"
        inputNumber1.placeholder = "0"
        inputNumber.keyboardType = .decimalPad
        inputNumber1.keyboardType = .decimalPad
    }
    
    @IBAction func sum(_ sender: Any) {
        guard let n1 = Double(inputNumber.text!) else { return }
        guard let n2 = Double(inputNumber1.text!) else { return }
        print(sum(n1,n2))
        inputNumber.text = ""
        inputNumber1.text = ""
    }
    
    @IBAction func sub(_ sender: Any) {
        guard let n1 = Double(inputNumber.text!) else { return }
        guard let n2 = Double(inputNumber1.text!) else { return }
        print(sub(n1,n2))
        inputNumber.text = ""
        inputNumber1.text = ""
    }
    @IBAction func mult(_ sender: Any) {
        guard let n1 = Double(inputNumber.text!) else { return }
        guard let n2 = Double(inputNumber1.text!) else { return }
        print(mult(n1,n2))
        inputNumber.text = ""
        inputNumber1.text = ""
    }
    @IBAction func div(_ sender: Any) {
        guard let n1 = Double(inputNumber.text!) else { return }
        guard let n2 = Double(inputNumber1.text!) else { return }
        print(div(n1,n2))
        inputNumber.text = ""
        inputNumber1.text = ""
    }
}

