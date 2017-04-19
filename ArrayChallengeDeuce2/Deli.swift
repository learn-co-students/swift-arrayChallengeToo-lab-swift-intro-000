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
        var is_special = false
        if name == "Billy Crystal" || name == "Meg Ryan"{
            line.insert(name, at: 0)
            is_special = true
        }
        else{
            line.append(name)
        }
        
        var r_str = "Welcome \(name), you're number \(line.count) in line."
        if(line.count == 1){
            r_str = "Welcome \(name), you're first in line!"
        }
        else if(is_special){
            r_str = "Welcome \(name)! You can sit wherever you like."
        }
        
        return r_str
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        var r_str = "There is no one to be served."
        if(line.count > 0){
            r_str = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return r_str
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var r_str = "The line is currently empty."
        if(line.count > 0){
            r_str = "The line is:"
            for (i, name) in line.enumerated(){
                r_str += "\n\(i + 1). \(name)"
            }
        }
        
        return r_str

    }
    
}
