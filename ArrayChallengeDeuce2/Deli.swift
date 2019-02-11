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
        if name == "Billy Crystal" || name == "Meg Ryan"
        {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }
        else if line.isEmpty
        {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        }
        else
        {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String
    {
        if line.isEmpty
        {
            return "There is no one to be served."
        }
        else
        {
            line.remove(at: 0)
            return "Now serving \(line[0])"
        }
    }
    
    
    // 3
    func lineDescription() -> String
    {
        var result = String()
        
        if line.isEmpty
        {
            result = "The line is currently empty"
        }
        else
        {
            for (index,name) in line.enumerated()
            {
                result = "The line is: \(index+1): \(name)"
            }
        }
        return result
    }
}
