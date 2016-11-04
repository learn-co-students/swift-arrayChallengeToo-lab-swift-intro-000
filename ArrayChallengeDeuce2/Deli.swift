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
        
        switch name {
            case "Billy Crystal", "Meg Ryan": line.insert(name, at: 0)
            default: line.append(name)
        }
        
        if name == "Billy Crystal" || name == "Meg Ryan" {
            return "Welcome \(name)! You can sit wherever you like."
        }

        if line[0] == name {
            return "Welcome \(name), you're first in line!"
        }
                else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if !line.isEmpty {
            let nowServing = line[0]
            line.remove(at: 0)
            return "Now serving \(nowServing)!"
        } else {
            return "There is no one to be served."
        }
       

    }
    
    //         let expectedDescription = "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"

    
    // 3
    func lineDescription() -> String {
        if !line.isEmpty {
            var newArray = ["The line is:\n"]
            for (index, item) in line.enumerated() {
                if index != (line.count - 1) { newArray.append("\(index+1). \(item)\n") } else {
                    newArray.append("\(index+1). \(item)")
                }
            }
            return newArray.joined()
        } else {
            return "The line is currently empty."
        }
    }
}

