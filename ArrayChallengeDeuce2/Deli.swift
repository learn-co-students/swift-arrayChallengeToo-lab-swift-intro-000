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
        switch name {
            case "Billy Crystal": line.insert(name, at: 0)
            case "Meg Ryan": line.insert(name, at: 0)
            default: line.append(name)
        }
        
        var hello: String
            if name == "Billy Crystal" {
                hello = "Welcome Billy Crystal! You can sit wherever you like."
            } else if name == "Meg Ryan" {
                hello = "Welcome Meg Ryan! You can sit wherever you like."
            } else if line.count == 1 {
                hello = "Welcome \(name), you're first in line!"
            } else {
                hello = "Welcome \(name), you're number \(line.count) in line."
            }
        return hello
    }
    
    
    // 2
    func nowServing() -> String {
        var greeting = "There is no one to be served."
        // TODO: Implement this function.
        if line.count > 0 {
            var serving = line[0] // now serving
            line.remove(at: 0) // remove person being served
            greeting = "Now serving \(serving)!"
        }
        return greeting
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "The line is currently empty."
        } else {
            var desc = ("The line is:\n")
            for (i, person) in line.enumerated() {
                desc = desc + "\(i + 1). \(person)\n"
            }
            print (desc);
            return desc
        }
        
    }
    
}
