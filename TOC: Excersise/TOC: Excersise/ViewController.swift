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
        
        if ((actionInput.text?.isEmpty) != nil) {
            
            detailOfState.text = "You did not enter any text for me to read"
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
    }
    
    @IBAction func unlock(sender: AnyObject) {
        
        detailOfState.text = ""
        
        if (state.text == "Closed") {
           "This door is already locked"
        }
        
        if (state.text == "Locked") {
            
            state.text = "Closed"
        }
        
        if (detailOfState.text == "You have to unlock this first") {
        
                state.text = "Closed"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

