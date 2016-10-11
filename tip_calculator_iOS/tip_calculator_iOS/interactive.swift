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
    
    func go() {
        
        while !done {
            
            io.writeMessage("\nEnter 't' to input tip, 'q' to Quit, or 'h' to Help")
            currentInput = io.getInput()
            
            if currentInput == "q" {
                done = true
            } else if currentInput == "t" {
                TipTotal()
            } else if currentInput == "h" {
                Help()
            } else {
                print ("Reinput that!")
            }
        }
        print ("Exiting....")
        
        return
    }
    
    func Help() {
        io.writeMessage("\nTo initiate tip calculator, enter 't'. After entering tip mode, you will be asked 'How much do you owe?'. Enter the amount of the bill. Next, you will be prompted to enter the amount of tip the waitress/ waiter has earned. Upon entering this information the tip calculator will automatically finish the process and calculate the tip, and bill plus tip for you.")
        currentInput = io.getInput()
    }
    
    func TipTotal() {
        
        io.writeMessage("\nHow much do you owe?")
        currentInput = io.getInput()
        // get bill amount
        let billAmount: Double? = Double(currentInput)
        //print(billAmount ?? 0.0)
        
        io.writeMessage("\nHow much will you tip?")
        currentInput = io.getInput()
        
        let tipPercent: Double? = Double(currentInput)
        let totalTip = ((tipPercent ?? 0.0) / 100)
        //print(totalTip)
        
        let theTip = ((billAmount ?? 0.0) * totalTip)
        print("\nYour tip is: \(String(format:"%.02f", roundTwoDigits(num: theTip)))")
        
        let theBill = ((billAmount ?? 0.0) + theTip)
        sleep(1)
        
        print("\nYour bill is: \(String(format: "%.02f", roundTwoDigits(num: theBill)))")
        
        
        
    }
    func roundTwoDigits(num: Double) -> Double {
        let tmp = (num*100).rounded(.toNearestOrAwayFromZero)
        return tmp/100
    }
}
