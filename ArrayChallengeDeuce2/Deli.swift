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
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            if name == line[0] {
                return "Welcome \(name) you're first in line!"
            } else { return "Welcome \(name), you're number \(line.count) in line."
            }
        }
//        for (index, name) in line.enumerated() {
//            if name == "Billy Crystal" {
//                return "Welcome Billy Crystal! You can sit wherever you like."
//            } else if name == "Meg Ryan" {
//                return "Welcome Meg Ryan! You can sit wherever you like."
//            } else if name == line[0] {
//                return "Welcome \(name), you're first in line!"
//            } else { return "Welcome \(name) you're number \(index + 1) in line."
//                }
//        }
    }
    
    // 2
    func nowServing() -> String {
        for (index, names) in line.enumerated() {
            if line.isEmpty {
                return "There is no one to be served"
            } else {
                line.remove(at: index)
                return "Now serving \(names)!"
            }
        }
        return ""
    }
    // 3
    func lineDescription() -> String {
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (index, name) in line.enumerated() {
                return "The line is: \n \(index + 1) \(name) \n \(index + 2) \(name) \n \(index + 3) \(name))"
            }
            return ""
        }
    }
}


