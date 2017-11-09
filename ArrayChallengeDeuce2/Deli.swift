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
                
        if (name == "Billy Crystal") || (name == "Meg Ryan") {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }else{
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            }else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
    
        switch line.count {
        case 0:
            return "There is no one to be served."
        default:
            let currentCustomer = line[0]
            line.remove(at: 0)
            return "Now serving \(currentCustomer)!"
        }
    
        
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
            } else {
            var lineOrder  = "The line is:"
            for (index,name) in line.enumerated() {
            lineOrder += "\n\(index + 1). \(name)"
            }
            print("\(lineOrder)")
            return lineOrder
        }
        }
    }
}
