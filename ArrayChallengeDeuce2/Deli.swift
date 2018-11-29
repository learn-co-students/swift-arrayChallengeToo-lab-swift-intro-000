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
        } else {
            line.append(name)
        }
    
        print(line)
        
        if name == "Billy Crystal" {
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if line.index(of: name) == 0 {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        if !line.isEmpty {
            let firstPerson = line[0]
            line.remove(at: 0)
            return "Now serving \(firstPerson)!"
        } else {
            return "There is no one to be served."
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineLength: String = "The line is:"
        
        if !line.isEmpty {
            for (index, person) in line.enumerated() {
                lineLength.append("\(index + 1). \(person)")
            }
            return lineLength
        } else {
            return "The line is currently empty."
        }

    }
    
}
