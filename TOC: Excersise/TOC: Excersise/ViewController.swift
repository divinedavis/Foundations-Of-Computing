//
//  ViewController.swift
//  TOC: Excersise
//
//  Created by Divine Davis on 10/23/15.
//  Copyright © 2015 Divine Davis. All rights reserved.
//

/*

Play Unlock The Swag when you touch the unlock button, but only play the part when the kid says "Unlock".

Compare the string that is inputted with the strings that I have as actions.

*/

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var detailOfState: UILabel!
    @IBOutlet weak var state: UILabel!
    
    @IBOutlet weak var actionInput: UITextField!
    
    
    
    @IBAction func readActionButton(sender: AnyObject) {
        
        if (state.text == "Open") && (actionInput.text == "Close") {
            
            state.text = "Close"
        }
        
        if (state.text == "Open") && (actionInput.text == "Close") {
            
            
        }
        
        if (actionInput.text == "Open") || (actionInput.text == "open") && (state.text == "Closed") {
            
            state.text = "Open"
        }
        
        if (state.text == "Locked") && (actionInput.text == "Open") {
         
            state.text = "Locked"
            
            detailOfState.text = "You have to unlock this first"
        }
        
        if (actionInput.text?.rangeOfString("Open")) != nil && (actionInput.text == "Closed") {
            
            state.text = "Open"
        }
        
        if (actionInput.text == "Lock") || (actionInput.text == "lock") && (state.text == "Closed") {
            
            state.text = "Locked"
        }
        
        actionInput.resignFirstResponder()
    }
    
    @IBAction func close(sender: AnyObject) {
        
        detailOfState.text = ""
        
        if (state.text == "Open") {
            
            state.text = "Closed"
        }
        
        if (state.text == "Locked") {
            
            detailOfState.text = "The door is obviously closed if it is locked"
        }
        
        actionInput.resignFirstResponder()
    }
    
    @IBAction func open(sender: AnyObject) {
        
        detailOfState.text = ""

        //If state is locked, you can not open the door
        if (state.text == "Locked") {
            
            //The door stays locked
            state.text = "Locked"
            
            detailOfState.text = "You have to unlock this first"
        }
        
        if (state.text == "Unlocked") {
            
            state.text = "Open"
        }
        
        if (state.text == "Closed") {
            
            state.text = "Open"
        }
        
        actionInput.resignFirstResponder()
    }
    
    @IBAction func lock(sender: AnyObject) {
        
        detailOfState.text = ""
        
        if (state.text == "Open") {
        
            detailOfState.text = "Close the door first"
        }
        
        if (state.text == "Unlocked") {
            
            state.text = "Locked"
        }
        
        if (state.text == "Closed") {
            
            state.text = "Locked"
        }
        
        actionInput.resignFirstResponder()
    }
    
    @IBAction func unlock(sender: AnyObject) {
        
        unlockStateChange(actionInput.text!)
        
        actionInput.resignFirstResponder()
    }
    
    func unlockStateChange(currentAction : String) -> String {
        
        detailOfState.text = ""
        
        if (state.text == "Closed") {
            
            detailOfState.text = "This door is already unlocked"
        }
        
        if (state.text == "Locked") {
            
            state.text = "Closed"
        }
        
        if (detailOfState.text == "You have to unlock this first") {
            
            state.text = "Closed"
        }

        
        return state.text!
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

