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
        var greeting : String

        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            greeting = "Welcome \(name)! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            greeting = "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            if line.count == 1 {
                greeting = "Welcome \(name), you're first in line!"
            }
            else {
                greeting = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        return greeting
    }
    
    
    // 2
    func nowServing() -> String {
        
        var serving : String
        var name : String
        
        if line.count != 0 {
            name = line[0]
            line.remove(at: 0)
            serving = "Now serving \(name)!"
        }
        else {
            serving = "There is no one to be served."
        }
        return serving

    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineDescription : String = ""
        
        if line.count == 0 {
            lineDescription = "The line is currently empty."
        }
        else {
            for (i, name) in line.enumerated() {
                if i == 0 {
                    lineDescription = "The line is:"
                }
                lineDescription = lineDescription + "\n\(i+1). \(name)"
            }
        }
        return lineDescription

    }
    
}
