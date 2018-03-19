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
        var greeting: String = ""
        
        if name == "Billy Crystal"  || name == "Meg Ryan" {
            line.insert(name, at:  0)
            greeting = "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            for (i, guest) in line.enumerated() {
                if i == 0 {
                    greeting = "Welcome \(guest), you're first in line!"
                } else {
                    greeting = "Welcome \(guest), you're number \(i + 1) in line."
                }
            }
        }
        
        return greeting
        
    }
    
    
    // 2
    func nowServing() -> String {
        var greeting: String = ""
        
        if line.isEmpty {
            greeting = "There is no one to be served."
        } else {
            let currentGuest = line[0]
            greeting = "Now serving \(currentGuest)!"
            line.remove(at: 0)
        }
        
        return greeting
        
    }
    
    
    // 3
    func lineDescription() -> String {
        var message: String = "The line is:"
        
        if line.isEmpty{
             message = "The line is currently empty."
        } else {
            var names: String = ""
            
            for (index, name) in line.enumerated() {
                names = "\(index + 1). \(name)"
                message += "\n\(names)"
            }
        }
        
        return message

    }
    
}
