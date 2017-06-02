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
        
        let index = line.count
        var returnMsg: String
                
        if name == "Billy Crystal"{
            
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
            
        } else if name == "Meg Ryan"{
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            if line.count == 0{
                line.append(name)
                returnMsg = "Welcome \(name), you're first in line!"
                return returnMsg
            }
            else{
                line.append(name)
                returnMsg = "Welcome \(name), you're number \(index + 1) in line."
                return returnMsg
            }
        }
        
    }
    
    // 2
    func nowServing() -> String {
        
        var currentGuest: String
        
        if line.isEmpty{
            return "There is no one to be served."
        } else {
            currentGuest = line[0]
            line.remove(at: 0)
            return "Now serving \(currentGuest)!"
            
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        var lineList: String
        
        if line.isEmpty{
            return "The line is currently empty."
        } else{
            lineList = "The line is:"
            for (location, guest) in line.enumerated(){
                lineList = lineList + "\n\(location + 1). \(guest)"
            }
            
            return lineList
        }

    }
    
}
