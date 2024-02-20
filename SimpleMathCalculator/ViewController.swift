//
//  ViewController.swift
//  SimpleMathCalculator
//
//  Created by Jeremy Wang on 2/14/24.
//

import UIKit

class ViewController: UIViewController {
    
    //Put outlets before viewDidLoad by convention
    // I/O outlets
    @IBOutlet weak var NumberOne: UITextField!
    @IBOutlet weak var MathOperator: UITextField!
    @IBOutlet weak var NumberTwo: UITextField!
    @IBOutlet weak var ResultMsg: UILabel!
    
    @IBOutlet weak var DoubleFlag: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Goood use cases:
        // 1) Database lookup
        // 2) Populate dropdown list/radio button list/checkbox list...
        // 3) Initialize viewing options of some UI elements.
        
        ResultMsg.isHidden = true
        DoubleFlag.isOn = false
        
    }
    
    //Put actions/methods after the viewDidLoad by convention.
    
    @IBAction func Calculate(_ sender: UIButton) {
        //This is unsafe conversion!
        //let numberOne = Double(NumberOne.text!)
        //let numberTwo = Double(NumberTwo.text!)
        ResultMsg.isHidden = false
      
        
        //Let's use guard keyword to do safe conversions.
        guard let numberOne = Double(NumberOne.text! ?? "")
        else{
            ResultMsg.text = "Please enter a valid number 1."
            return
        }
        
        guard let numberTwo = Double(NumberTwo.text! ?? "")
        else{
            ResultMsg.text = "Please enter a valid number 2."
            return
        }
        
        //Validate textbox input - did the user enter something?
        if MathOperator.text?.isEmpty ?? true {
            ResultMsg.text = "Please enter a valid math operator!"
            return
        }
        
        
        
        //let mathOperator = MathOperator.text!
        
        //Let's implement a decision-making structure for different calculations
        //hint: if..elseif or switch...case block!
        
        //should I use let or var for the output
        
        var result = 0.00
        
        switch MathOperator.text{
        case "+":
            result = Double(numberOne + numberTwo)
        case "-":
            result = Double(numberOne - numberTwo)
        case "/":
            result = Double(numberOne / numberTwo)
        case "*":
            result = Double(numberOne * numberTwo)
        default:
            ResultMsg.text = "Wrong operator!"
            return
        }
        
        
        
        //The double logic here
        var doubleResult = 0.00
        if DoubleFlag.isOn{
            doubleResult = result * 2
            ResultMsg.text = "The final result is \(String(result))\n" + "The double is \(String(doubleResult))."
        }else{
            ResultMsg.text = "The final result is \(String(result))."
        }
        
       
      
        
        
    }
}

