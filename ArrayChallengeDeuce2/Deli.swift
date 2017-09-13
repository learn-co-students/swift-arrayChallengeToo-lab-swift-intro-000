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
        
        let billy = "Billy Crystal"
        let meg = "Meg Ryan"
        
        if (name == billy){
            line.insert(name, at: 0)
            return "Welcome \(billy)! You can sit wherever you like."
        }
        
        if (name == meg){
            line.insert(name, at: 0)
            return "Welcome \(meg)! You can sit wherever you like."
        
        }else{
        line.append(name)
            if (line[0] == name){
                return "Welcome \(name), you're first in line!"
            }else{
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }
    // 2
    func nowServing() -> String {
        // TODO: Implement this function.
        if line.isEmpty{
            return "There is no one to be served."
        }
        else {
        let currentPerson = line[0]
        line.remove(at: 0)
        return "Now serving \(currentPerson)!"
            
        }
    }
    
    // 3
    func lineDescription() -> String {
        // TODO: Implement this function.
        var description = String()
        if line.isEmpty {
            description = "currently empty."
        }else {
            for (index,name) in line.enumerated(){
            description =  description + "\n\(index+1). \(name)"
            }
        }
        return "The line is:" + description
    }
    
}
