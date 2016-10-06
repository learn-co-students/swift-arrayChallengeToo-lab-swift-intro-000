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
        if (name == "Billy Crystal") {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else if (name == "Meg Ryan") {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if (line[0] == name) {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if (line.count == 0) {
            return "There is no one to be served."
        } else {
            let served = line[0]
            line.remove(at: 0)
            return "Now serving \(served)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var description: [String] = []
        if (line.count == 0) {
            return "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                description.append("\(index + 1). \(name)")
            }
        }
        return "The line is:\n\(description.joined(separator: "\n"))"
    }

}

