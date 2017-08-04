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
        if name == "Billy Crystal" || name == "Meg Ryan"{
            line.insert(name,at:0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if line[0] == name {
                return "Welcome \(name), you're first in line!"
            }
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let serving: String = line.remove(at: 0)
            return "Now serving \(serving)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var lineDescription = "The line is:"
            for (place, person) in line.enumerated() {
                lineDescription += "\n\(place + 1). \(person)"
            }
            return lineDescription
        }
    }
}
