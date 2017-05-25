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
        line.append(name)
        if line.count == 1 {
            return "Welcome \(name), you're first in line!"
        }
        return "Welcome \(name), you're number \(line.count) in line."
    }
    
    
    // 2
    func nowServing() -> String {
        if !line.isEmpty {
            let customer = line[0]
            line.remove(at: 0)
            return "Now serving \(customer)!"
        }
        return "There is no one to be served."
    }
    
    
    // 3
    func lineDescription() -> String {
        if !line.isEmpty {
            var customerLine = "The line is:"
            
            for (index, name) in line.enumerated() {
                customerLine.append("\n\(index + 1). \(name)")
            }
            return customerLine
        }
        return "The line is currently empty."
    }
    
}
