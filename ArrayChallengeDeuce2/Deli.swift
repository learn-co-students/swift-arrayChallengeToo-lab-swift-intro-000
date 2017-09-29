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
        var returnmessage:String
        switch name {
            case "Billy Crystal", "Meg Ryan":
                returnmessage = "Welcome \(name)! You can sit wherever you like."
                line.insert(name,at:0)
            default:
                if line.isEmpty {
                    returnmessage = "Welcome \(name), you're first in line!"
                } else {
                    returnmessage = "Welcome \(name), you're number \(line.count+1) in line."
                }
                line.append(name)
        }
       return returnmessage
        
    }
    
    
    // 2
    func nowServing() -> String {
        var returnmessage:String
        if (line.isEmpty) {
            returnmessage = "There is no one to be served."
        } else {
            returnmessage = "Now serving \(line[0])!"
            line.removeFirst()
        }
        return returnmessage
    }
    
    
    // 3
    func lineDescription() -> String {
        var returnmessage:String
        if (line.isEmpty) {
            returnmessage = "The line is currently empty."
        } else {
            returnmessage = "The line is:"
            for (index,person) in line.enumerated() {
                returnmessage.append("\n\(index+1). \(person)")
            }
        }
        return returnmessage

    }
    
}
