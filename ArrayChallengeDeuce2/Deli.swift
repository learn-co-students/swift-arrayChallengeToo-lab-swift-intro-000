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
            let position = line.index(of: name)! + 1
            if position == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(String(describing: position)) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            for (index,x) in line.enumerated() {
                line.remove(at: index)
                return "Now serving \(x)!"
                
            }
        }
        return ""
    }
    
    
    // 3
    func lineDescription() -> String {
        var count = 1
        var lineContent = ""
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for name in line {
                lineContent = lineContent + "\n\(count). \(name)"
                count+=1
            }
            return "The line is:\(lineContent)"
        }
    }
    
}
