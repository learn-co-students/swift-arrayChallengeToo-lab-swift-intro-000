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
                
        if name == "Meg Ryan" || name == "Billy Crystal" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
        }
        if line.index(of: name) == 0 {
            return "Welcome \(name), you're first in line!"
        } else {
            let num: Int = line.index(of: name)! + 1
            return "Welcome \(name), you're number \(num) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let name = line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var str = "The line is:"
            for (index, name) in line.enumerated() {
                str += "\n\(index + 1). \(name)"
            }
            return str
        }

    }
    
}
