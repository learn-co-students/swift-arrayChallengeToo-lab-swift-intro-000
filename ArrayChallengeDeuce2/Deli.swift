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
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            if line.count == 1{
                return "Welcome \(name), you're first in line!"
            } else{
                return "Welcome \(name), you're number \(line.count) in line."

            }
            
        }
    }
    
    // 2
    func nowServing() -> String {
        
        var toServe :String
        
        if line.isEmpty == true{
            return "There is no one to be served."
        }else{
            toServe = line[0]
            line.remove(at: 0)
            return "Now serving \(toServe)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var retList :String = "The line is:"
        if line.isEmpty == true {
            return "The line is currently empty."
        } else {
            for (index, rad) in line.enumerated(){
               retList = "\(retList)\n\(index+1). \(rad)"
            }
            return retList
        }

    }
    
}
