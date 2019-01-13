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
        switch name {
        case "Billy Crystal", "Meg Ryan":
            line.insert(name, at: 0)
        default:
            line.append(name)
        }
        
        let indexOfName = line.firstIndex(of: name)
        var textToReturn: String?
        
        if (indexOfName == 0)
        {
            textToReturn = "Welcome \(line[0]), you're first in line!"
        }
        
        if ((name == "Billy Crystal") || (name == "Meg Ryan"))
        {
            textToReturn = "Welcome \(line[0])! You can sit wherever you like."
        }
        
        if (indexOfName! > 0)
        {
            textToReturn = "Welcome \(name), you're number \(indexOfName!+1) in line."
        }
        
 
        
        return textToReturn!
    }
    

    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        var textToReturn: String?
        
        if line.isEmpty
        {
            textToReturn = "There is no one to be served."
        }
        else
        {
            textToReturn = "Now serving \(line[0])!"
            line.remove(at: 0)
        }

        return textToReturn!
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var textToReturn = ""
        
        // TODO: Implement this function.
        if line.isEmpty
        {
            textToReturn = "The line is currently empty."
        }
        else
        {
            textToReturn = "The line is:"
            for (index, value) in line.enumerated()
            {
                textToReturn += "\n\(index + 1). \(value)"
            }
        }
        
        return textToReturn
        

    }
    
}
