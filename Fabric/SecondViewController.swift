//
//  SecondViewController.swift
//  Fabric
//
//  Created by Samantha Lauer on 2016-06-15.
//  Copyright © 2016 KYSS. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet var taskTitle: UITextField!
    @IBOutlet var taskDesc: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Events
    @IBAction func addButtonClicked(sender: UIButton){
        taskManager.insertTask(taskTitle.text!, description: taskDesc.text!, date:"", type: "")
        self.view.endEditing(true)
        taskTitle.text = ""
        taskDesc.text = ""
        //don't need line below (optional)
        self.tabBarController!.selectedIndex = 0
        
    }
    
    //Touch Screen Functions
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }

    
    //UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

