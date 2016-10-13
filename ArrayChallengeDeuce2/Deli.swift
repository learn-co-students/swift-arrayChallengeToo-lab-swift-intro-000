//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var phrase = ""
    
    // 1
    func addNameToLine(name: String) -> String {
        
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            phrase = "Welcome Billy Crystal! You can sit wherever you like."
        case "Mega Ryan":
            line.insert(name, at: 0)
            phrase = "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            phrase = "Welcome \(name), you're number \(line) in line" // need to find the position of this persons line and interpolate it in line.
        }
        return phrase
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        return String

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        return String

    }
    
}

/* TODO:
    - for in loop for the line description
    - need to also pull that position out for the addNameToLine func
*/
