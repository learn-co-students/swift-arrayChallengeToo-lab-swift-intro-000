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
        let x = name
        let y = line.count
        line.append(name)
        
        if name == line[0] {
            return "Welcome \(x), you're first in line!"
        }
        if name == "Billy Crystal" {
            line[0] = "Billy Crystal"
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        if name == "Meg Ryan" {
            line[0] = "Meg Ryan"
            return "Welcome Meg Ryan! You can sit wherever you like."
        }
        else {
            return "Welcome \(x), you're number \(y + 1) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let x = line[0]
            line.remove(at: 0)
            return "Now serving \(x)!"
        }
    }
    
    
    //
    func lineDescription() -> String {
        // TODO: Implement this function.
        var descriptionLine: String = ""
        if line.isEmpty {
            descriptionLine = "The line is currently empty."
        } else {
            
            descriptionLine = "The line is:"
            
            for (index, people) in line.enumerated() {
                descriptionLine = descriptionLine + "\n\(index + 1). \(people)"
            }
        }
        return descriptionLine
    }
}
