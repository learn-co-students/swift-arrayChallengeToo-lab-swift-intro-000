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
        if name == "Billy Crystal" {
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        }
        else {
            line.append(name)
            var count = line.count
            if count == 1 {
                return "Welcome \(name), you're first in line!"
            }
            else {
                return  "Welcome \(name), you're number \(count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        }
        else {
            var served = line[0]
            line.remove(at: 0)
             return "Now serving \(served)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        }
        else {
            var ret = "The line is:"
            for (index, customer) in line.enumerated() {
                ret = ret + "\n" + "\(index + 1). \(customer)"
            }
            return ret
        }
        
    }
    
}
