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
            var greeting = String ()
            switch name {
            case "Billy Crystal":
                line.insert("\(name)", at: 0)
            case "Meg Ryan":
                line.insert("\(name)", at: 0)
            default:
                line.append("\(name)")
            }
            switch line[0] {
            case "Billy Crystal":
                greeting = "Welcome Billy Crystal! You can sit wherever you like."
            case "Meg Ryan":
                greeting = "Welcome Meg Ryan! You can sit wherever you like."
            default:
                for (index, person) in line.enumerated() {
                    if index == 0 {
                        greeting = "Welcome \(person), you're first in line!"
                    } else {
                        greeting = "Welcome \(person), you're number \(index + 1) in line."
                    }
                }
            }
            return greeting
    }
    
    func nowServing() -> String {
        var youGotServed = String ()
        if line.isEmpty {
            youGotServed = "There is no one to be served."
        } else {
            youGotServed = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return youGotServed
        
    }
    
    func lineDescription() -> String {
        var lineStatus = String ()
        if line.isEmpty {
            lineStatus = "The line is currently empty."
        } else {
            lineStatus = "The line is:"
            for (index, name) in line.enumerated(){
                lineStatus.append("\n\(index+1). \(name)")
            }
        }
        return lineStatus
    }
    
}





