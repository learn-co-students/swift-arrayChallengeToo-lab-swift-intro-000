//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var noOneHere = "There is no one to be served"
    
    // 1
    func addNameToLine(name: String) -> String {
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at:0)
            let welcomeMessage = "Welcome, \(name)! You can sit where ever you'd like."
            return welcomeMessage
        } else if line.count < 1 {
            line.append(name)
            let welcomeMessage = "Welcome, \(name)! You're first in line."
            return welcomeMessage
        } else {
            line.append(name)
            let welcomeMessage = "Welcome, \(name)! You're \(line.count) in line."
            return welcomeMessage
        }
    }

    
    // 2
    func nowServing() -> String {
        if line.isEmpty {
            return noOneHere
        } else {
            let servedPerson = line.remove(at: 0)
            return "Now serving \(servedPerson)"
        }
    }
    
    // 3
    func lineDescription() -> String {
        if line.isEmpty {
            return noOneHere
        } else {
            var lineIs = "The line is:"
            for (index, name) in line.enumerated() {
                lineIs.append("\n\(index + 1). \(name)")
            }
            return lineIs
        }
    }
    
}
