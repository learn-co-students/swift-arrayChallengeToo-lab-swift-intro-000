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
        line.append(name)
        var welcome: String = ""
        
        for (value, person) in line.enumerated() {
            if person == "Billy Crystal" || person == "Meg Ryan" {
                line.insert(person, at: 0)
                line.removeLast()
                welcome = "Welcome \(person)! You can sit wherever you like."
            } else if line[0] == name {
                //line.append(person)
                welcome = "Welcome \(person), you're first in line!"
                
            } else {
                //line.append(person)
                welcome = "Welcome \(person), you're number \(value + 1) in line."
            }
        }
        return welcome
    }
    
    
    
    // 2
    func nowServing() -> String {
        var welcome: String = ""
        // TODO: Implement this function.
        if line.isEmpty {
            welcome = "There is no one to be served."
        } else {
            welcome = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return welcome
    }
    
    
    // 3
    func lineDescription() -> String {
        var welcome: String = "The line is:"
        // TODO: Implement this function.
        if line.isEmpty {
            welcome = "The line is currently empty."
        } else {
            for (value, name) in line.enumerated() {
                welcome += "\n\(value + 1). \(name)"
            }
        }
        return welcome
    }
    
}
