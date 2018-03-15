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
    func addNameToLine(name: String) -> String
    {
        
        var returnLine:String = ""
        
       // TODO: Implement this function.
        if name == "Meg Ryan" || name == "Billy Crystal"
        {
            line.insert(name, at: 0)
            returnLine = "Welcome \(name)! You can sit wherever you like."
        }
        else
        {
            line.append(name)
            if line.count <= 1
            {
                returnLine = "Welcome \(name), you're first in line!"
            }
            else
            {
                returnLine = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
        return returnLine
    }
    
    
    // 2
    func nowServing() -> String
    {
        
        // TODO: Implement this function.
        var returnLine:String = ""
      
        if line.count <= 0
        {
            returnLine = "There is no one to be served."
        } else {
        
            returnLine = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return returnLine
    }
    
    // 3
    func lineDescription() -> String
    {
        
        // TODO: Implement this function.
        var returnLine:String = ""
        
        if line.count <= 0
        {
            returnLine = "The line is currently empty."
        }
        else
        {
            returnLine = "The line is:"
            for (index,name) in line.enumerated()
            {
                returnLine += "\n\(index + 1). \(name)"
            }
        }
        
        return returnLine
    }
}














