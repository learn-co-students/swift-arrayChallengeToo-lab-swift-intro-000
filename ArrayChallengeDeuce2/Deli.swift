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
        if name == "Billy Crystal" {
            line.insert(name, at: 0)
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        if line.count == 1 && name != "Billy Crystal" || line.count == 1 && name != "Meg Ryan" {
            return "Welcome \(name), you're first in line!"
        } else if name == "Billy Crystal" {
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        var temp = ""
        if line.count == 0 {
            temp = "There is no one to be served."
        } else {
            temp = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return temp
    }
    
    
    // 3
    func lineDescription() -> String {
        var temp = ""
        var lineIs = "The line is:"
        if line.isEmpty {
            temp =  "The line is currently empty."
        } else {
            for (i, name) in line.enumerated() {
                lineIs =  lineIs + "\n\(i+1). \(name)"
            temp = lineIs
            }
        }
        return temp
    }
    
}
