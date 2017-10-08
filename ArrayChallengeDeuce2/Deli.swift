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
                
        if (name=="Billy Crystal")
        {
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        else if (name=="Meg Ryan")
        {
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        }
        else
        {
            line.append(name)
            
            if line.count == 1
            {
                return "Welcome \(name), you're first in line!"
            }
            else
            {
                return "Welcome \(name), you're number \(line.count) in line."
            }
            
        }
        
    }
    
    
    // 2
    func nowServing() -> String
    {
        
        if line.isEmpty
        {
            return "There is no one to be served."
        }
        
        for (index, name) in line.enumerated()
        {
            var str1 = name
            line.remove(at: index)
            
            return "Now serving \(str1)!"
        }
        
        return "error"

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty
        {
            return "The line is currently empty."
        }
        
        var str3 = ["The line is:\n"]
        
        for (index, name) in line.enumerated()
        {
            if ((line.count - 1) == (index))
            {
                str3.append("\(index+1). \(name)")
            }
            else
            {
                str3.append("\(index+1). \(name)\n")
            }
        }
        
        return str3.joined()

    }
    
}
