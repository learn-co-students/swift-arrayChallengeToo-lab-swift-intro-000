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
                
        switch name {
            case "Billy Crystal", "Meg Ryan":
                line.insert(name, at: 0)
                return "Welcome \(name)! You can sit wherever you like."
            default:
                line.append(name)
        }
        
        if line.count == 1 {
            return "Welcome \(name), you're first in line!"
        }
        
        return "Welcome \(name), you're number \(line.count) in line."
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.count == 0 {
            return "There is no one to be served."
        }
        
        let servingName = line[0] // Have to store this before removing from array + returning values
        
        line.remove(at: 0)
        return "Now serving \(servingName)!"

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.count == 0 {
            return "The line is currently empty."
        }
        
        var lineList: String = "The line is:\n"
        
        for (index, person) in line.enumerated() {
            lineList += "\(index+1). \(person)"
            
            if line.count - 1 != index { // Don't append \n to last item in list
                lineList += "\n"
            }
        }
        
        return lineList

    }
    
}
