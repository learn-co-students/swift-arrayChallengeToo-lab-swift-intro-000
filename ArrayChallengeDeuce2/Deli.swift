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
        case "Billy Crystal", "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            if line.index(of: name) == 0 {
                return "Welcome \(name), you're first in line!"
            } else {
                let index = line.index(of: name)
                return "Welcome \(name), you're number \(index! + 1) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if !line.isEmpty {
            let name = line.first
            line.removeFirst()
            return "Now serving \(name!)!"
        }
        
        return "There is no one to be served."
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var list: String = ""
        
        if !line.isEmpty {
            list.append("The line is:")
            
            for (index, name) in line.enumerated() {
                list.append("\n\(index + 1). \(name)")
            }
            
            return list
        }
        
        list.append("The line is currently empty.")
        return list

    }
    
}
