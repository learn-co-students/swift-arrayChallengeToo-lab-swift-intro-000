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
        
        var result :String = ""
        
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            result = "Welcome Billy Crystal! You can sit wherever you like."
    
        case "Meg Ryan" :
            line.insert(name, at: 0)
            result = "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            result = "Welcome \(name), you're number \(line.count) in line."
        }
        return result
        
        // TODO: Implement this function.
        
    }
    
    
    // 2
    func nowServing() -> String {
        var name : String
        switch line.count {
        case 0:
            return  "There is no one to be served."
        default:
            name = line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
        }
        // TODO: Implement this function.

    }
    
    
    // 3
    func lineDescription() -> String {
        var descr : String
        switch line.count {
        case 0:
            return  "The line is currently empty."
        default:
            descr = "The line is:"
            for (index, item) in line.enumerated() {
                descr += "\n\(index+1). \(item)"
            }
            return descr
        }
    }
    
}
