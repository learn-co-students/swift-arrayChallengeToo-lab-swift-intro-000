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
        var welcom = ""
        if name == "Billy Crystal" {
            line.insert(name, at: 0)
            welcom = "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            line.insert(name, at: 0)
            welcom = "Welcome Meg Ryan! You can sit wherever you like."
        } else {
            line.append(name)
            if line.count == 1 {
                welcom = "Welcome \(name), you're first in line!"
            } else {
                for (i, name) in line.enumerated() {
                    welcom = "Welcome \(name), you're number \(i+1) in line."
                    print(i)
                }
            }
        }
        
        return welcom
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.

        if line.isEmpty == true {
            return "There is no one to be served."
        } else {
            let name = line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        
        
        if line.isEmpty == true {
            return "The line is currently empty."
        } else {
            var names = ""
            for (i, name) in line.enumerated() {
                names.append("\n\(i+1). \(name)")
            }

            return "The line is:\(names)"
        }
        

    }
    
}
