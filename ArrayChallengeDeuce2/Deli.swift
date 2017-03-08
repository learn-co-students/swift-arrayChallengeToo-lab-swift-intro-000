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
        
       
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        if name == line[0] && !(name == "Billy Crystal" || name == "Meg Ryan") {
            
            return "Welcome \(name), you're first in line!"
            
        } else if name == "Billy Crystal" {
            
            return "Welcome \(name)! You can sit wherever you like."
            
        } else if name == "Meg Ryan"  {
        
            return "Welcome \(name)! You can sit wherever you like."
        }
        
        return "Welcome \(name), you're number \(line.count) in line."
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        switch line.count {
            
        case 0:
            
            return "There is no one to be served."
            
        default:
            
            let pers = line[0]
            line.remove(at: 0)
            return "Now serving \(pers)!"
         }
    }
       
    
    // 3
    func lineDescription() -> String {
        
        switch line.count {
            
        case 0:
            
            return "The line is currently empty."
            
        default:
            var lineDesc : String = "The line is:"
            for (index, char) in line.enumerated() {
                lineDesc += "\n\(index + 1). \(char)"
                
            }
            return lineDesc
        }
    }
    
}
