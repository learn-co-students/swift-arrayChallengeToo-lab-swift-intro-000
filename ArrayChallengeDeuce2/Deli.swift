//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var greeting = " "
    
    
    func addNameToLine(name: String) -> String {
        var greeting: String = ""
        
        if name == "Billy Crystal" {
            line.insert(name, at: 0)
            greeting = "Welcome \(name)! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
            greeting = "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            for (index, name) in line.enumerated() {
                if index == 0 {
                   greeting = "Welcome \(name), you're first in line!"
                } else {
                    greeting = "Welcome \(name), you're number \(index + 1) in line."
                }
            }
        }
        return greeting
    }
    
    func nowServing() -> String {
        var greeting: String = ""
        // TODO: Implement this function.
        
        if line.isEmpty {
            greeting = "There is no one to be served."
        } else {
            greeting = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return(greeting)
    }
    
    func lineDescription() -> String {
        var lineDesc = "The line is:"
        if line.isEmpty {
            lineDesc = "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                lineDesc.append("\n\(index + 1). \(name)")
            }
        }
        return lineDesc
    }
    
}
