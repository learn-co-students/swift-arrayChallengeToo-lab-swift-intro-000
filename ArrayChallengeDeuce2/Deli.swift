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
        var ar: String = " "
        
        if name == "Billy Crystal"  || name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        
            
        if name == "Meg Ryan" {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if name == "Billy Crystal" {
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        
        for (index, person) in line.enumerated() {
            if index == 0 && person == name {
                return "Welcome \(person), you're first in line!"
            } else if person == name {
                ar = "Welcome \(person), you're number \(index+1) in line."
            }
        }
   return ar
}
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        if !line.isEmpty {
            let nowServing = line[0]
            line.remove(at: 0)
            return "Now serving \(nowServing)!"
        } else {
            return "There is no one to be served."
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        // TODO: Implement this function.
       
        if !line.isEmpty {
            var str: String = "The line is:"
            for (index, customer) in line.enumerated() {
                str += "\n\(index+1). \(customer)"
            }
           return str
        }
        
        return "The line is currently empty."
      

    }
    
}
