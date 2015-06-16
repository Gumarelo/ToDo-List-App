//
//  SecondViewController.swift
//  ToDo
//
//  Created by Jorge Casariego on 15/6/15.
//  Copyright (c) 2015 Jorge Casariego. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTaskTextField: UITextField!
    @IBOutlet weak var descTaskTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    //UITextField delegate
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return false
    }

    @IBAction func AddTaskButton(sender: UIButton) {
        taskManager.addTask(nameTaskTextField.text, descripction: descTaskTextField.text)
        self.view.endEditing(true)
        
        nameTaskTextField.text = ""
        descTaskTextField.text = ""
        
        self.tabBarController?.selectedIndex = 0
        
    }

}

