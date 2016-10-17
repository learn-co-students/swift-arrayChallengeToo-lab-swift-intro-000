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
        if name == "Billy Crystal" {
            
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
            
        }else if name == "Meg Ryan"{
        
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
            
        }else {
            
            line.append(name)
            if line.count == 1 {
                return "Welcome \(name), you're first in line!"
            }else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
            
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        }else {
            let retStr = "Now serving \(line[0])!"
            line.remove(at: 0)
            return retStr
        
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        }else {
            
            var outString = "The line is:\n"
            for (index,item) in line.enumerated() {
                if(index != line.count-1){
                outString += "\(index+1). \(item)\n"
                }else {
                outString += "\(index+1). \(item)"
                }
                
                
            }
            
            return outString
        }
    }
    
}
