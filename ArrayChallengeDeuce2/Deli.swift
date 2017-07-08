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
        if (name == "Billy Crystal" || name == "Meg Ryan") {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }
        else {
            
            line.append(name)
            
            //Return string based on the name and their position on the line
            
            //First in line
            if (line.index(of: name) == 0) {
                return "Welcome \(name), you're first in line!"
            }
            else {
                return  "Welcome \(name), you're number \(Int(line.index(of: name)!) + 1) in line."
            }
            
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return "There is no one to be served."
        }
        else {
            
            //Get the next person in line, which is the first index
            let personServing = line[0]
            //Remove first person in line
            line.removeFirst()
            return "Now serving \(personServing)!"
            
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        if (line.isEmpty) {
            return "The line is currently empty."
        }
        else {
            var lineDescription = "The line is:"
            
            for (lineNumber, person) in line.enumerated() {
                lineDescription.append("\n\(lineNumber + 1). \(person)")
            }
            
            return lineDescription
        }

    }
    
}
