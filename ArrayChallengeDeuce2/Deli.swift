//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


//Done as part of Deli Counter lab

class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
       // TODO: Implement this function.
        var welcomeMsg = String()
        if name == "Billy Crystal" || name == "Meg Ryan" {
            
            welcomeMsg = "Welcome \(name)! You can sit wherever you like."
            line.insert(name, at: 0)
        }
        else {
            if line.isEmpty {
                welcomeMsg = "Welcome \(name), you're first in line!"
            }
            else {
                welcomeMsg = "Welcome \(name), you're number \(line.count+1) in line."
            }
            line.append(name)
        }
        
        return welcomeMsg
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var servingMsg = String()
        if line.isEmpty {
            servingMsg = "There is no one to be served."
        }
        else {
            servingMsg = "Now serving \(line.removeFirst())!"
        }
        return servingMsg
    }
    
    
    // 3  
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var lineDespMsg:String
        if line.isEmpty {
            lineDespMsg = "The line is currently empty."
        }
        else {
            lineDespMsg = "The line is:"
            for (idx,val) in line.enumerated() {
                lineDespMsg.append("\n\(idx+1). \(val)")
            }
        }
        return lineDespMsg
    }
    
}
