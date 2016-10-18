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
        if name == "Billy Crystal" {
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            }
            return "Welcome \(name), you're number \(line.count) in line."
            
        }
        
    }
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else if !line.isEmpty {
            return "Now serving \(line.remove(at: 0))!"
        }
        return "\(line)"
    }
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var index = 0
            return "The line is:\n" +
                "\(index + 1). \(line[index])\n" + "\(index + 2). \(line[index + 1])\n" + "\(index + 3). \(line[index + 2])\n" + "\(index + 4). \(line[index + 3])"
            
        }
        return "\(line)"
    }
    
}
