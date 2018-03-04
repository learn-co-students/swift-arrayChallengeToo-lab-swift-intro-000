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
        
        let welcomeMessage: String = "Welcome \(name)"
        let priorityMessage = "! You can sit wherever you like."
        let firstInLine = ", you're first in line!"
        
        switch name {
        case "Meg Ryan":
            line.insert(name, at: 0)
            return welcomeMessage + priorityMessage
        case "Billy Crystal":
            line.insert(name, at: 0)
            return welcomeMessage + priorityMessage
        default:
            line.append(name)
            if line.index(of: name) == 0 {
                return welcomeMessage + firstInLine
            }
            else {
                let personIndex: Int = line.index(of: name)! + 1
                let standardMessage = ", you're number \(personIndex) in line."
                return welcomeMessage + standardMessage
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.count == 0 {
            return "There is no one to be served."
        }
        else {
            let nowServing = "Now serving \(line[0])!"
            line.remove(at: 0)
            return nowServing
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.count == 0 {
            return "The line is currently empty."
        }
        else {
            var lineList: String = "The line is:"
            for (person, step) in line.enumerated() {
                lineList += "\n\(person + 1). \(step)"
            }
            return lineList
        }
    }
}
