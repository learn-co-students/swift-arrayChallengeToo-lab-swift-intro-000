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
        switch true {
        case line.isEmpty == true:
            line.append(name)
            return "Welcome \(name), you're first in line!"
        case name == "Billy Crystal" || name == "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if !line.isEmpty {
            let name = line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
        } else {
            return "There is no one to be served."
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var newLine = "The line is:"
        
        if !line.isEmpty {
            for (index, name) in line.enumerated() {
                newLine.append("\n\(index + 1). \(name)")
            }
            print(newLine)
            return newLine
        } else {
            return "The line is currently empty."
        }

    }
    
}
