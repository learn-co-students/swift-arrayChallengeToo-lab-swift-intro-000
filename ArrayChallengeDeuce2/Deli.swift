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
        if name == "Meg Ryan"{
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if name == "Billy Crystal"{
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else {
            line.append(name)
            let x = line.count
            if line.count > 1{
            return "Welcome \(name), you're number \(x) in line."
            }else {
                return "Welcome \(name), you're first in line!"
            }
            
        }
        
    
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let expression = "Now serving \(line[0])!"
            line.remove(at: 0)
            return expression
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        var F = "The line is:"
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, step) in line.enumerated(){
                F += "\n\(index + 1). \(step)"
}
        }
        return F
}
}
