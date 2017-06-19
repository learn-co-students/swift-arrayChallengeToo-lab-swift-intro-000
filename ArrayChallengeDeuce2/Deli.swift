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
                
        if name == "Billy Crystal" || name == "Meg Ryan"{
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        var output: String = ""
        
        if line.count == 0 {
            output = "There is no one to be served."
        } else {
            output = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return output
    }
    
    
    // 3
    func lineDescription() -> String {
        var output: String = ""
        if line.count == 0 {
            output = "The line is currently empty."
        } else {
            output = "The line is:"
            
            for (i,name) in line.enumerated() {
                output += "\n\(i+1). \(name)"
            }
        }
        print(output)
        print("The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom")
        return output
    }
    
}
