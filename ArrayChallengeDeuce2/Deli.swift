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
        if (name == "Billy Crystal" || name == "Meg Ryan")
        {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }
        else{
            line.append(name)
            let getName = line[0]
            if getName == name{
            return "Welcome \(name), you're first in line!"
            }
            else{
                for (index, n) in line.enumerated()
                {
                    if n == name{
                        return "Welcome \(name), you're number \(index + 1) in line."

                    }
                }
                
                }
            
           }
         return ""
        }
        
    
    
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.count == 0{
            return "There is no one to be served."
        }
        else{
            let getName = line[0]
            line.remove(at: 0)
            return "Now serving \(getName)!"
            
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.count == 0{
            return "The line is currently empty."
        }
        else{
            var currentLine = "The line is:"
            for (i, n) in line.enumerated(){
                currentLine += "\n\(i + 1). \(n)"
            }
            return currentLine
        }
    }
    
}
