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
        
        var greetGuest: String = ""
        
        if (name=="Billy Crystal") || (name=="Meg Ryan") {
            line.insert(name, at: 0)
            greetGuest = "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if line.index(of: name)==0 {
                greetGuest = "Welcome \(name), you're first in line!"
            } else {
                greetGuest = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
       
        return greetGuest
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        var serving: String = ""
        let lineLength: Int=line.count
        if lineLength==0 {
            serving="There is no one to be served."
        } else {
            serving="Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return serving
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var displayableLine: String = ""
        
        if line.count==0 {
            displayableLine="The line is currently empty."
        } else {
            
            displayableLine="The line is:"

        for (index, person) in line.enumerated() {
            displayableLine = displayableLine + "\n\(index + 1). \(person)"
        }
        }


        return displayableLine
        
    }
    
}
