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
        var greeting: String = ""
                
       // TODO: Implement this function.
        if name == "Billy Crystal" || name == "Meg Ryan"
        {
            line.insert(name, at: 0)
            
            greeting = "Welcome \(name)! You can sit wherever you like."
        }
        else
        {
            line.append(name)
            
            if line.count == 1 {
                greeting = "Welcome \(name), you're first in line!"
            }
            else {
                greeting = "Welcome \(name), you're number \(line.count) in line."
            }
            
        }
        
        return greeting
    }
    
    
    // 2
    func nowServing() -> String {
        var currentlyServing: String = ""
        
        // TODO: Implement this function.
        if !line.isEmpty
        {
            currentlyServing = "Now serving \(line[0])!"
            
            line.remove(at: 0)
        } else {
            currentlyServing = "There is no one to be served."
        }

        return currentlyServing
    }
    
    
    // 3
    func lineDescription() -> String {
        var theLineIs: String = "The line is:"
        
        // TODO: Implement this function.
        if !line.isEmpty {
            for (lineIndex, customer) in line.enumerated() {
                theLineIs += "\n\(lineIndex + 1). \(customer)"
            }
        } else {
            theLineIs = "The line is currently empty."
        }
    
        return theLineIs
    }
    
}
