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
        switch name {
        case "Billy Crystal":
            line.insert(name, at:0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at:0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
        }
        
        switch line.count {
        case 1:
            return "Welcome \(name), you're first in line!"
        default:
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let announcement = "Now serving \(line[0])!"
            line.remove(at: 0)
            return announcement
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "The line is currently empty."
        } else {
            var lineIs: String = "The line is:\n"
            for (index, person) in line.enumerated() {
                if index == line.count - 1 {
                    lineIs.append("\(index + 1). \(person)")
                } else {
                    lineIs.append("\(index + 1). \(person)\n")
                }
            }
            return lineIs
        }
    }
}
