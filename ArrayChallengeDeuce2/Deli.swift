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
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if name == line[0] {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        if line.count == 0 {
            return "There is no one to be served."
        } else {
            let str = line[0]
            line.remove(at: 0)
            return "Now serving \(str)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "The line is currently empty."
        } else {
            var str : String = ""
            
            for (index,name) in line.enumerated() {
                str.append("\n\(index+1). \(name)")
            }
            
            return "The line is:\(str)"
        }
        
    }
    
}
