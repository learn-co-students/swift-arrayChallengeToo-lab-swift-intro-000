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
        
        var welcome = String()
        
        if line.isEmpty {
            line.insert(name, at: 0)
            welcome = "Welcome \(name), you're first in line!"
        } else if name == "Billy Crystal" {
            line.insert("Billy Crystal", at: 0)
            welcome = "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
            welcome = "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            line.append(name)
            welcome = "Welcome \(name), you're number \(line.count) in line."
        }
        
        return welcome
    }
    
    
    // 2
    func nowServing() -> String {
        
        var nowServingMessage = String()
        
        if line.isEmpty {
            nowServingMessage = "There is no one to be served."
        } else {
            nowServingMessage = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return nowServingMessage
    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var serving = "The line is:"
            for (index,name) in line.enumerated(){
                serving.append("\n\(index + 1). \(name)")
            }
            return serving
        }
    }
}
