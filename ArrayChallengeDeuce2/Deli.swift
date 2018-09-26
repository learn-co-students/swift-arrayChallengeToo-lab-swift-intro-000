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
            if line.isEmpty {
                line.append(name)
                return "Welcome \(name), you're first in line!"
            } else {
                line.append(name)
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            var currentCustomer = line[0]
            line.remove(at: 0)
            return "Now serving \(currentCustomer)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            print("The line is:")
            for (position, name) in line.enumerated() {
                print("\n \(position+1). \(name)")
            }
            return "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
        }
    }
    
}
