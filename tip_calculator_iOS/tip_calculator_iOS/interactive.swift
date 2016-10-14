//
//  interactive.swift
//  tip_calculator_iOS
//
//  Created by Rigel Preston on 10/10/16.
//  Copyright © 2016 Rigel Preston. All rights reserved.
//

import Foundation

class Interactive{
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()
    private var caltip = Caltip()
    
    func go() {
        
        while !done {
            
            io.writeMessage("\nEnter 't' to input tip, 'q' to Quit, or 'h' to Help")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
            } else if currentInput == "t" {
                caltip.TipTotal()
            } else if currentInput == "h" {
                Help()
            } else {
                print ("Incorrect, please select 'h' for Help if you need assistance!")
            }
        }
        print ("Exiting....")
        
        return
    }
    
    func Help() {
        io.writeMessage("\nTo initiate tip calculator, enter 't'. After entering tip mode, you will be asked 'How much do you owe?'. Enter the amount of the bill. Next, you will be prompted to enter the amount of tip the waitress/ waiter has earned. Upon entering this information the tip calculator will automatically finish the process and calculate the tip, and bill plus tip for you.")
        currentInput = io.getInput()
    }
    

}
