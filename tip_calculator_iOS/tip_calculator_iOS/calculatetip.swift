//
//  calculatetip.swift
//  tip_calculator_iOS
//
//  Created by Rigel Preston on 10/11/16.
//  Copyright © 2016 Rigel Preston. All rights reserved.
//

import Foundation

class Caltip {
    private var done: Bool = false
    private var currentInput: String = ""
    private var io = Io()

func TipTotal() {
    
    io.writeMessage("\nHow much do you owe?")
    currentInput = io.getInput()
    // get bill amount
    let billAmount: Double? = Double(currentInput)
    //print(billAmount ?? 0.0)
    
    /*io.writeMessage("\nHow many in your party?")
    currentInput = io.getInput()
    
    let peopleAmount: Int? = Int(currentInput)*/
    
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
