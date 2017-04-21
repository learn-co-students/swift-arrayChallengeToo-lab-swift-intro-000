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
        if ( name == "Billy Crystal" || name == "Meg Ryan" ) {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        if ( line.index(of: name) == 0 ) {
            if ( name == "Billy Crystal" || name == "Meg Ryan" ) {
                return "Welcome \(name)! You can sit wherever you like."
            } else {
                return "Welcome \(name), you're first in line!"
            }
        } else {
            let pos: Int = line.index(of: name)! + 1
            return "Welcome \(name), you're number \(pos) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if ( line.isEmpty) {
            return "There is no one to be served."
        } else {
            let name = line[0]
            let str = "Now serving \(name)!"
            line.remove(at: 0)
            return str
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return "The line is currently empty."
        } else {
            var ret: String = "The line is:\n"
            for (index, name) in line.enumerated() {
                ret += String(index+1) + ". " + name
                if ( index != line.count - 1 ) {
                    ret += "\n"
                }
            }
            return ret
        }
    }
    
}
