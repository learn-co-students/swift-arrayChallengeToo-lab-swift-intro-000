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
        switch name {
        case "Billy Crystal":
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            let num = line.index(of: name)! + 1
            if (num == 1) {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(num) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let serving = "Now serving \(line[0])!"
            line.remove(at: 0)
            return serving
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if !line.isEmpty {
            var lineName: String = ""
            for (index, name) in line.enumerated() {
                if (index+1 == line.count) {
                    lineName = lineName + "\(index+1). \(name)"
                } else {
                    lineName = lineName + "\(index+1). \(name)\n"
                }
            }
            return "The line is:\n\(lineName)"
        } else {
            return "The line is currently empty."
        }
    }
    
}
