//
//  ViewController.swift
//  Calculator
//
//  Created by COE-02 on 23/08/19.
//  Copyright © 2019 COE-02. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

   
    @IBOutlet weak var TxtA: UITextField!
    
    
    @IBOutlet weak var TxtB: UITextField!
    
    
    
    @IBAction func SegmentChange(_ sender: UISegmentedControl)
    {
       
        print("The value is \(TxtB.text!) & \(TxtA.text!)")
        if(TxtB.text) != "" && (TxtA.text) != ""
        {
        
        let a = ((Int)(TxtA.text!))!
        let b = ((Int)(TxtB.text!))!
        
         var c = 0
        
        switch sender.selectedSegmentIndex
        {
        case 0 :
            c = a + b
        case 1:
            c = a - b
        case 2:
            c = a * b
        case 3 :
            c = a / b
        default:
            print("Select Method")
            break
            
        }
    
    let alertView = UIAlertController (title: "Answer", message: "Answer is  \(c)", preferredStyle:.alert)
    
    let btnResign = UIAlertAction(title: "Cancel", style: .cancel)
    {
        (action) in self.dismiss(animated: true, completion: nil)
    }
    alertView.addAction(btnResign)
    
    
    self.present(alertView,animated: true)
    {
        print("After view present")
    }
        }
            let errorshow = UIAlertController(title: "Error",message: "Please enter value in text box",preferredStyle: .actionSheet)
            
            let btncancle = UIAlertAction(title: "Cancel", style: .cancel)
            {
                (action) in
                self.dismiss(animated: true, completion: nil)
            }
            errorshow.addAction(btncancle)
            
            self.present(errorshow,animated: true,completion: nil)
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

