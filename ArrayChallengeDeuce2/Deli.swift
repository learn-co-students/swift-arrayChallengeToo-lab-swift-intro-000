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
        var return_String : String
        
       // TODO: Implement this function.
        if name == "Billy Crystal" || name == "Meg Ryan"{
            
            line.insert(name, at: 0)
            return_String = "Welcome \(name)! You can sit wherever you like."
        }
        else {
            line.append(name)
            if line.count == 1{
                return_String = "Welcome \(name), you're first in line!"
            }
            else {
                return_String = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        return return_String
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var return_String : String
        
        if line.isEmpty {
            return_String =  "There is no one to be served."
        }
        else {
            return_String =  "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        return return_String

    }
    
    
    // 3
    func lineDescription() -> String {
        
        var return_String : String
        
        if line.isEmpty {
            return_String =  "The line is currently empty."
        }
        else {
            return_String =  "The line is:"
            for (index, person) in line.enumerated(){
                return_String.append("\n\(index+1). \(person)")
            }
            
            
        }
        return return_String
    }
    
}
