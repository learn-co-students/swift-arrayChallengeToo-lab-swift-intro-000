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
        
        var greeting: String
        
        if (name == "Billy Crystal" || name == "Meg Ryan" ) {
            line.insert(name, at: 0)
            greeting = "Welcome " + name + "! You can sit wherever you like."
            
        } else {
            line.append(name)
            greeting = "Welcome " + name + ", you're number " + "\(line.count)" + " in line."
        }
        
        if (line.count == 1){
            greeting = "Welcome " + name + ", you're first in line!"
        }
        
        return greeting
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        var serving: String
        
        if (line.count == 0){
            serving = "There is no one to be served."
        } else {
            serving = "Now serving " + line[0] + "!"
            line.remove(at: 0)
        }
        
        return serving
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var status: String
        
        if (line.count == 0){
            status = "The line is currently empty."
        } else {
            status = "The line is:\n"
            
            for (index, person) in line.enumerated() {
                status += "\(index + 1). " + person
                
                if (line.count - 1 != index) {
                    status += "\n"
                }
            }
        }
        
        return status
    }
    
}
