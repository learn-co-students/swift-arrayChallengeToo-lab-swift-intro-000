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
        
        if line.isEmpty && (name != "Billy Crystal" || name != "Meg Ryan") {
            line.insert(name, at: 0)
            return "Welcome \(name), you're first in line!"
        } else if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        var nowServing = ""
        if line.isEmpty {
            nowServing = "There is no one to be served."
        } else {
            for (index, name) in line.enumerated() {
                nowServing = "Now serving \(name)!"
                line.remove(at: index)
                return nowServing
            }
        }
        return nowServing
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineDescription = ""
        
        if line.isEmpty {
            lineDescription = "The line is currently empty."
        } else {
            lineDescription = "The line is:\n"
            for (index, name) in line.enumerated() {
                if index < (line.count - 1) {
                    lineDescription += "\(index + 1). \(name)\n"
                } else {
                    lineDescription += "\(index + 1). \(name)"
                }
            }
        }
        return lineDescription
    }
    
}
