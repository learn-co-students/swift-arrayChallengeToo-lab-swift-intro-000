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
        var output = "Welcome \(name)! You can sit wherever you like."
        switch name {
        case "Billy Crystal" :
            line.insert(name, at: 0)
        case "Meg Ryan" :
            line.insert(name, at: 0)
        default :
            line.append(name)
            let pos = line.index(of: name)!
            
            switch pos {
            case 0 :
                output = "Welcome \(name), you're first in line!"
            default :
                output = "Welcome \(name), you're number \(pos + 1) in line."
            }
        }
        
        return output
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var output = "There is no one to be served."
        if(line.count > 0) {
            output = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return output
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var output = "The line is currently empty."
        if(line.count > 0) {
            output = "The line is:"
            for (index, person) in line.enumerated() {
                output += "\n\(index + 1). \(person)"
            }
        }
        
        return output
    }
    
}
