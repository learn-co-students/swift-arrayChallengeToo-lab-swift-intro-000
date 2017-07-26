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
    func addNameToLine(name insertname: String) -> String {
        var greeting = "Welcome " + insertname + "! You can sit wherever you like."
        if insertname == "Billy Crystal" {
            line.insert(insertname, at: 0)
        } else if insertname == "Meg Ryan" {
            line.insert(insertname, at: 0)
        } else if line.isEmpty {
            line.insert(insertname, at: 0)
            greeting = "Welcome " + insertname + ", you're first in line!"
        } else {
            line.append(insertname)
            greeting = "Welcome " + insertname + ", you're number " + String(line.count) + " in line."
        }
        return greeting
    }
    
    
    // 2
    func nowServing() -> String {
        var lineStatus = "There is no one to be served."
        if !line.isEmpty {
            lineStatus = "Now serving " + line[0] + "!"
            line.removeFirst()
        }
        return lineStatus
    }
    
    
    // 3
    func lineDescription() -> String {
        var lineRoster = "The line is:"
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, _) in line.enumerated() {
                lineRoster += "\n\(index + 1). " + line[index]
            }
            return lineRoster
        }
    }
    
}
