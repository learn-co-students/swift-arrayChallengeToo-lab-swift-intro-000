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
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            let position = line.index(of: name)!
            if position == 0 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(position + 1) in line."
            }
        }
        
        
    }
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let name = line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var list: String = "The line is:"
            for (index, name) in line.enumerated() {
                let lineOrder = ("\n\(index + 1). \(name)")
                list.append(lineOrder)
            }
            return list
        }

    }
    
}
