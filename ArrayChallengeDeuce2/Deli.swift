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
        case "Billy Crystal", "Meg Ryan":
        
         line.insert(name, at: 0)
        
        return "Welcome \(name)! You can sit wherever you like."
            
        default:
            
            line.append(name)
        
            if line.count == 1 {
                
                return "Welcome \(name), you're first in line!"
                
            } else {
                
           return "Welcome \(name), you're number \(line.count) in line."
        
    }
        }
        
    }
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.

        if !line.isEmpty {
            
             let start = "Now serving \(line[0])!"
            
            line.remove(at: 0)
            
            return start
            
        }
        
        else {
        
                
                
            return "There is no one to be served."
    }
        }
    
    // 3
    func lineDescription() -> String {
        
       
        var lineDescriptionString = "The line is:"
        
        
        if line.count == 0 {
            
    
                return "The line is currently empty."
                
          
        }
        
        else  {
           
            for (index, name) in line.enumerated() {
                lineDescriptionString.append("\n\(index + 1). \(name)")
            }
            
            
            return lineDescriptionString
            
            }
            
           
                
        }
        
        
        
        
    }
    

