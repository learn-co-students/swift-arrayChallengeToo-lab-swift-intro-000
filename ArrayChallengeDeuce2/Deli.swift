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
        
        var stringReturned:String = ""
        
        if name == "Billy Crystal" {
            stringReturned = "Welcome Billy Crystal! You can sit wherever you like."
            line.insert(name, at: 0)
        }else if name == "Meg Ryan" {
            stringReturned = "Welcome Meg Ryan! You can sit wherever you like."
            line.insert(name, at: 0)
        }else {
            line.append(name)
            for (index, person) in line.enumerated(){
                
                
                if index == 0 {
                    
                    stringReturned = "Welcome \(person), you're first in line!"
                }else {
                    stringReturned = "Welcome \(name), you're number \(index + 1) in line."
                }
                
            }
            
        }
        
        
        
        return stringReturned
    }
    
    // 2
    
    func nowServing() -> String {
        
        var thingy:String = ""
        
        if line.isEmpty {
            thingy = "There is no one to be served."
        }else {
            thingy = "Now serving \(line[0])!"
            print(thingy)
            line.remove(at:0)
        }
        return thingy
    }
    
     
    // 3
 
    func lineDescription() -> String {
        
        var theLine:String = ""
        
        if line.isEmpty {
            theLine = "The line is currently empty."
        }
        else {
            theLine = "The line is:"
            for (index, person) in line.enumerated() {
                theLine += "\n\(index + 1). \(person)"
            }
        }
        
        return theLine
    }

}
