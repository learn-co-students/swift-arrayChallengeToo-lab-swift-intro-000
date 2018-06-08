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
        
        
        
        if name == "Billy Crystal"{
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
           
        } else if name == "Meg Ryan"{
            line.insert(name, at: 0)
            return("Welcome Meg Ryan! You can sit wherever you like.")
        } else {
            line.append(name)
            if line[0] == name {
                return "Welcome \(name), you're first in line!"
            } else {
                let y = line.count
                return ("Welcome \(name), you're number \(y) in line.")
            }
        }
        
        
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            let firstInLine = line[0]
            line.remove(at: 0)
            return ("Now serving \(firstInLine)!")
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        var lineList: String = "The line is:"
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, person) in line.enumerated(){
                lineList.append("\n\(index + 1). \(person)")
            }
            print(lineList)
            return lineList
        }
    }
}
