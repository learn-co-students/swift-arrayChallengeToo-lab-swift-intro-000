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
            return  "Welcome \(name)! You can sit wherever you like."
        } else if line.count == 0 {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        } else {
            line.append(name)
            return "Welcome \(name), you're number \(String(describing: line.index(of: name)! + 1)) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if !line.isEmpty {
            let firstPerson = line[0]
            line.remove(at: 0)
            return "Now serving \(String(describing: firstPerson))!"
        } else {
            return "There is no one to be served."
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineList: String = "The line is:"
        if line.isEmpty {
            return "The line is currently empty."
        } else {
        for (index, name) in line.enumerated() {
            lineList.append(("\n\(index + 1). \(name)"))
            }
            
        return lineList
        }
    }
    
}
