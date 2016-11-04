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
        if (name == "Billy Crystal" || name == "Meg Ryan"){
            line.insert(name, at:0)
            return "Welcome, \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            let length = line.count
            if(length == 1){
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(length) in line!"
            }
            
        }
    }
    
        
        
    // 2
    func nowServing() -> String {
        
        if (line.count < 1) {
            return "There is no one to be served."
        } else {
            return "Now serving \(line.count)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if (line.count < 1) {
            return "The line is currently empty"
        } else {
            var lineDescription = "The line is: \n"
            for (index, item) in line.enumerated(){
                lineDescription.append("\(index + 1). \(item)")
            }
        }
        return lineDescription()
    }
    
}









