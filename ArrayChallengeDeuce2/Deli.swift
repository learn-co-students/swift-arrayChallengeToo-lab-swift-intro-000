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
        case "Billy Crystal":
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            if line.isEmpty {
                line.append(name)
                return "Welcome \(name), you're first in line!"
            } else {
                line.append(name)
                return "Welcome \(name), you're number \(String(line.count)) in line."
            }
        }
    }
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            return "Now serving \(line.removeFirst())!"
        }
    }
    
    // 3
    func lineDescription() -> String {
        var lineList = "The line is:\n"
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                if index < line.count-1 {
                    lineList += "\(index+1). \(name)\n"
                } else {
                    lineList += "\(index+1). \(name)"
                }
            }// end for loop
            return lineList
        }
    }
    
}
