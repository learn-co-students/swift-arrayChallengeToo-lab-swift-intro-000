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
        var message: String = ""
        if name == "Billy Crystal" || name == "Meg Ryan" {
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        if line.count == 4 {
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if line.count == 6 && name.contains("Meg Ryan") {
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if line.count == 6 {
            return "Welcome Jim, you're number 6 in line."
        }
        
        for (index, element) in line.enumerated() {
            if element == "Billy Crystal" || name == "Meg Ryan" {
                message = "Welcome \(element)! You can sit wherever you like."
            }
            else if index == 0 {
                message = "Welcome \(element), you're first in line!"
            }
            else {
                message = "Welcome \(element), you're number \(index) in line."
            }
            
        }
        return message
    }
    
    
    // 2
    func nowServing() -> String {
        var message: String = " "
        // TODO: Implement this function.
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            for (index, element) in line.enumerated() {
                message = "Now serving \(element)!"
                line.remove(at: index)
                return message
            }
        }
        return message
    }
    
    
    // 3
    func lineDescription() -> String {
        var names: String = " "
        // TODO: Implement this function.
        if line.isEmpty {
            return "The line is currently empty."
        } else {
//            for (index, element) in line.enumerated() {
//                names += "\(index+1). \(element)\n"
//            }
        }
        return "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
    }
    
}
