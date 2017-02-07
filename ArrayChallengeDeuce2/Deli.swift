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
        switch name{
            case "Billy Crystal":
                line.insert(name, at: 0)
                return "Welcome \(name)! You can sit wherever you like."
            case "Meg Ryan":
                line.insert(name, at: 0)
                return "Welcome \(name)! You can sit wherever you like."
            default:
                if line.isEmpty{
                    line.append(name)
                    return "Welcome \(name), you're first in line!"
                } else {
                    line.append(name)
                    return "Welcome \(name), you're number \(line.count) in line."
                }
            
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty{
            return "There is no one to be served."
        } else {
            let serving = line[0]
            line.remove(at: 0)
            return "Now serving \(serving)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty{
            return "The line is currently empty."
        } else{
            var str: String = ""
            for (x,y) in line.enumerated(){
                str += ("\n\(x+1). \(y)")
            }
            return "The line is:\(str)"
        }
    }
    
}
