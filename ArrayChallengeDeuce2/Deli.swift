//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var vip = ["Billy Crystal", "Meg Ryan"]
    var position = 0
    
    // 1
    func addNameToLine(name: String) -> String {
                
       // TODO: Implement this function.
        
        if (vip.contains(name)) {
        line.insert(name, at:0)
        } else {
            line.append(name)
        }
        
        
        if (vip.contains(name)) {
            return "Welcome \(name)! You can sit wherever you like."
        } else if (line[0] == name) {
            return "Welcome \(name), you're first in line!"
        } else {
            for (i, x) in line.enumerated() {
                if (x == name) {
                position = i+1
                }
            }
            return "Welcome \(name), you're number \(position) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return "There is no one to be served."
        } else {
            var s = line[0]
            line.remove(at: 0)
            return "Now serving \(s)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return "The line is currently empty."
        } else {
            var s : String = "The line is:"
            for (i, x) in line.enumerated() {
                s = s + "\n\(i+1). \(x)"
            }
        return s
        }
    }
}
