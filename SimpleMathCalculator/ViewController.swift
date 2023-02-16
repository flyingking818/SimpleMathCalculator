//
//  ViewController.swift
//  SimpleMathCalculator
//
//  Created by Jeremy Wang on 2/14/23.
//

import UIKit

class ViewController: UIViewController {
    
    //Put outlets before viewDidLoad by convention
    // I/O outlets
    @IBOutlet weak var NumberOne: UITextField!
    @IBOutlet weak var MathOperator: UITextField!
    @IBOutlet weak var NumberTwo: UITextField!
    @IBOutlet weak var ResultMsg: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Put actions/methods after the viewDidLoad by convention.
    
    @IBAction func Calculate(_ sender: UIButton) {
        let numberOne = Double(NumberOne.text!)
        let numberTwo = Double(NumberTwo.text!)
        
        //let mathOperator = MathOperator.text!
        
        //Let's implement a decision-making structure for different calculations
        //hint: if..elseif or switch...case block!
        
        //should I use let or var for the output
        
        var total = 0.00
        
        switch MathOperator.text{
        case "+":
            total = Double(numberOne! + numberTwo!)
        case "-":
            total = Double(numberOne! - numberTwo!)
        case "/":
            total = Double(numberOne! / numberTwo!)
        case "*":
            total = Double(numberOne! * numberTwo!)
        default:
            ResultMsg.text = "Wrong entry!"
        }
        
        ResultMsg.text = String(total)
        
        
    }
}

