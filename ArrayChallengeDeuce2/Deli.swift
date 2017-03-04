//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []

    func addNameToLine(name: String) -> String {
        
        var result = ""
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        if let position = line.index(of: name) {
            switch position {
            case 0:
                if name == "Billy Crystal" || name == "Meg Ryan" {
                    result = "Welcome \(name)! You can sit wherever you like."
                } else {
                    result = "Welcome \(name), you're first in line!"
                }
            default:
                result = "Welcome \(name), you're number \(position + 1) in line."
            }
        }

        return result
    }
    

    func nowServing() -> String {
        
        if !line.isEmpty {
            let nextInLine = line.remove(at: 0)
            return "Now serving \(nextInLine)!"
        }
        
        return "There is no one to be served."
    }
    

    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        }
        
        var result = "The line is:"
        
        for (index, person) in line.enumerated() {
            result.append("\n")
            result.append("\(index + 1). \(person)")
        }
        
        return result

    }
    
}
