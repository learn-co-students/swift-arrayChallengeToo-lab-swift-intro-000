//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
       // TODO: Implement this function.
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        var greeting : String = ""
        
        for (i, x) in line.enumerated() {
            if x == "Billy Crystal" || x == "Meg Ryan" {
                greeting = "Welcome \(x)! You can sit wherever you like."
                break // Dont understand why I had to add a break here?
            } else if i == 0{
                greeting = "Welcome \(x), you're first in line!"
            } else {
                greeting = "Welcome \(x), you're number \(i + 1) in line."
            }
        }
        
        return greeting
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var serving: String = ""
        if line.isEmpty{
            serving = "There is no one to be served."
        } else {
            serving = "Now serving \(line[0])!"
            //Removing the person being served.
            line.removeFirst()
        }
       
        return serving
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var status: String = ""
        var personsInLine: [String] = []
        if line.isEmpty {
            status = "The line is currently empty."
        } else {
            // Is there a better way to handle this?
            for (i, name) in line.enumerated(){
                personsInLine.append("\(i + 1). \(name)")
            }
            status = "The line is:\n\(personsInLine.joined(separator: "\n"))"
        }
        
        return status

    }
    
}
