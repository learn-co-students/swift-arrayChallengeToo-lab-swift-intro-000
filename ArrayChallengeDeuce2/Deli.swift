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
        var message: String = ""
       // TODO: Implement this function.
            if name == "Billy Crystal" || name == "Meg Ryan"{
                line.insert(name, at: 0)
                 message = "Welcome \(name)! You can sit wherever you like."
            }else {
                line.append(name)
                for (index, name) in line.enumerated() {
                    if index == 0 {
                        message = "Welcome \(name), you're first in line!"
                    }else {
                        message  = "Welcome \(name), you're number \(index+1) in line."
                    }
                }
            }
        return message
    }
    
    
    // 2
    func nowServing() -> String {
        var message: String = ""
        // TODO: Implement this function.
        if !line.isEmpty {
            let person = line.remove(at: 0)
            message = "Now serving \(person)!"
            
        }else {
            message = "There is no one to be served."
        }
        
        return message
    }
    
    
    // 3
    func lineDescription() -> String {
        var message: String = "The line is:"
        // TODO: Implement this function.
        if !line.isEmpty {
            for (index, name) in line.enumerated() {
                message.append("\n\(index+1). \(name)")
            }
           
        }else {
            message = "The line is currently empty."
        }
        return message
    }
    
}
