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

        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            let position = line.index(of: name)!
            if position == 0 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(position + 1) in line."
            }
        }
    }


    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        if !line.isEmpty {
            let person = line[0]
            line.remove(at: 0)
            return "Now serving \(person)!"
        } else {
            return "There is no one to be served."
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        
        if !line.isEmpty {
            var list: String = "The line is:"
            for (index, person) in line.enumerated() {
                let listMember = ("\n" + "\(index + 1). \(person)")
                list.append(listMember)
            }
            return(list)
        } else {
            return "The line is currently empty."
        }
    }

}
