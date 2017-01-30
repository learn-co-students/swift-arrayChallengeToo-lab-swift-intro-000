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
                
       if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
        }
       else {
            line.append(name)
        }// TODO: Implement this function.
      
        if line.count == 1 {
            return "Welcome \(name), you're first in line!"
        } else if name == "Billy Crystal" || name == "Meg Ryan" {
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if line.count == 0 {
            return "There is no one to be served."
        } else {
            let saying = "Now serving \(line[0])!"
            line.remove(at: 0)
            return saying
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        func test() {
            for name in line {
                print(name)
            }
        }
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var returningLine = "The line is:"
            for (index,value) in line.enumerated() {
                returningLine += "\n\(index+1). \(value)"
            }
            return returningLine
        }
        
    }
    
}
