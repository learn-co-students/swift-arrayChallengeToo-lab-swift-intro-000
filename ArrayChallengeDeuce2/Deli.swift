//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var linecount = 0
    
    // 1
    
    func addNameToLine(name: String) -> String {
        switch name {
        case "Billy Crystal"  :
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan" :
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        default :
            if line.count == 0 {
                line.append(name)
                return "Welcome \(name), you're first in line!"
            } else  {
                line.append(name)
                 return "Welcome \(name), you're number \(line.count) in line."
            }
        }
    }

    
    // 2
        func nowServing() -> String {
            if line.isEmpty {
                return "There is no one to be served."
                
            } else {
                let currentserv = line.remove(at: 0)
                return "Now serving \(currentserv)!"
                
            }
        }

    
    
    // 3
    func lineDescription() -> String {
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var serving = "The line is:"
            for (index,name) in line.enumerated(){
                serving.append("\n\(index + 1). \(name)")
            }
            return serving
        }
}

}
