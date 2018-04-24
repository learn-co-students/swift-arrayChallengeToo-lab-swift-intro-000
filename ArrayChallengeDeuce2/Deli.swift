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
      
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
        }

        switch line.count {
        case 1:
            return "Welcome \(name), you're first in line!"
        default:
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        switch line.count {
        case 0:
            return "There is no one to be served."
        default:
            let x = line[0]
            line.remove(at: 0)
            return "Now serving \(x)!"
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        
        switch line.isEmpty {
        case true:
            return "The line is currently empty."
        default:
            var x = "The line is:\n"
            for (y, z) in line.enumerated(){
                switch y {
                case line.count - 1:
                    x.append("\(y + 1). \(z)")
                default:
                    x.append("\(y + 1). \(z)\n")
                }
            }
     return x
}   
       
}
}
