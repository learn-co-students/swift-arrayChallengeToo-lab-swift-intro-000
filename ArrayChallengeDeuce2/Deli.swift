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
            return("Welcome Billy Crystal! You can sit wherever you like.")
        case "Meg Ryan":
            line.insert("Meg Ryan", at: 0)
            return("Welcome Meg Ryan! You can sit wherever you like.")
        default:
            line.append(name)
        }
        
        switch line.count {
        case 1:
            return("Welcome \(name), you're first in line!")
        default:
            return("Welcome \(name), you're number \(line.count) in line.")
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        switch line.count {
        case 0:
            return("There is no one to be served.")
        default:
            let x = line.remove(at: 0)
            return("Now serving \(x)!")
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        switch line.count {
        case 0:
            return("The line is currently empty.")
        default:
            var final = "The line is:\n"
            for (index, value) in line.enumerated() {
                switch index {
                case line.count - 1:
                    final.append("\(index+1). \(value)")
                default:
                    final.append("\(index+1). \(value)\n")
                }
            }
            return final
        }

    }
    
}
