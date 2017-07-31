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
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
                line.insert(name, at: 0)
                return "Welcome \(name)! You can sit wherever you like."
            }
        else if line.isEmpty {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        }
        else {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        }
        else {
            let nowSrvMsg = "Now serving \(line[0])!"
            line.remove(at: 0)
            return nowSrvMsg
        }
        

    }
    
    
    // 3
    func lineDescription() -> String {
        var lineDesc = "The line is:"
        
        
        if line.isEmpty {
            return "The line is currently empty."
        }
        else {
            
            for (iter, name) in line.enumerated() {
                lineDesc.append("\n\(iter + 1). \(name)")
            }
            return lineDesc
        }

    }
    
}
