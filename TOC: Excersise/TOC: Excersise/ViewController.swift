//
//  ViewController.swift
//  TOC: Excersise
//
//  Created by Divine Davis on 10/23/15.
//  Copyright © 2015 Divine Davis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var detailOfState: UILabel!
    @IBOutlet weak var state: UILabel!
    
    
    @IBAction func close(sender: AnyObject) {
        
        detailOfState.text = ""
        
        if (state.text == "Open") || (state.text == "Close the door first") {
            
            state.text = "Closed"
        }
        
        if (state.text == "Locked") {
            
            detailOfState.text = "The door is obviously closed if it is locked"
        }
        
        if (state.text == "Closed") {
            
            detailOfState.text = "It's already closed, why would you want to reclose it?"
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
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

