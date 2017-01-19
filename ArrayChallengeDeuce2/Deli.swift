//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1 label
    func addNameToLine(name: String) -> String {
        var y:String = ""
       // TODO: Implement this function.
        if line.isEmpty {
            line.append(name)
            return "Welcome \(name), you're first in line!"
            
        } else if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
            
        } else {
            line.insert(name, at: line.count)
            y = String(line.count)
            return "Welcome \(name), you're number \(y) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let x:String = line[0] // take individual name from line
            line.remove(at: 0)     // remove individual
            return "Now serving \(x)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        var rtn:String = ""
        
        // TODO: Implement this function.
        if line.isEmpty {
            rtn = "The line is currently empty."
        } else {
            for (index, person) in line.enumerated() {
                let tmp = "\n\(index+1). \(person)"
                rtn = "\(rtn)\(tmp)"
            }
            rtn = "The line is:\(rtn)"
            
        }
        return rtn
        
    }
    
}
