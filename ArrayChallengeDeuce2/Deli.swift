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
            return "Welcome \(line[0]), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if line.count == 0 {
            return "There is no one to be served."
        } else {
            let next: String = line[0]
            line.remove(at: 0)
            return "Now serving \(next)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        if line.count == 0 {
            return "The line is currently empty."
        }
        var lineDescription: String = "The line is:"
        for (num, name) in line.enumerated() {
            lineDescription.append("\n\(num + 1). \(name)")
        }
        return lineDescription
    }
    
}
