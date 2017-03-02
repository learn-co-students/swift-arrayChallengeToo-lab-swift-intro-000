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
        var position: Int = 0
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        for (y,x) in line.enumerated() {
            if name == x {
                position = y
            }
        }
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
            return "Welcome \(name)! You can sit wherever you like."
        } else if name == line[0] {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(position + 1) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let per = line[0]
            line.remove(at: 0)
            return "Now serving \(per)!"
        }
        
        line.removeFirst()
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var output: String = "The line is:\n"
        if line.isEmpty {
            output = "The line is currently empty."
            return output
        } else {
            for (index, per) in line.enumerated() {
                if index == line.count - 1 {
                    output += "\(index + 1). \(per)"
                } else {
                    output += "\(index + 1). \(per)\n"
                }
            }
        }
        return output
    }
    
}
