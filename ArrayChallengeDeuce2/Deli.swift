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
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        } else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if name == "Billy Crystal" {
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else {
        line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        var newLine:[String] = line
        if newLine.isEmpty {
            return "There is no one to be served."
        } else {
            line.remove(at: 0)
            return "Now serving \(newLine[0])!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var theList = String()
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (y,names) in line.enumerated() {
                theList = theList + "\n\(y + 1). \(names)"
            }
            return "The line is:" + theList
        }
        
    }
    
}
