//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    func addNameToLine(name: String) -> String {
        var returnMe: String
       if name == "Billy Crystal" || name == "Meg Ryan" {
            returnMe = "Welcome \(name)! You can sit wherever you like."
            print("Welcome \(name)! You can sit wherever you like.")
            line.insert(name, at: 0)
        } else {
            if line.index(of: name) == 0 {
                print("Welcome \(name), you're first in line!")
                returnMe = "Welcome \(name), you're first in line!"
            } else {
                line.append(name)
                print("Welcome \(name), you're number \(line.count) in line.")
                returnMe = "Welcome \(name), you're number \(line.count) in line."
            }
        }
        return returnMe
    }
    
    
    func nowServing() -> String {
        var returnMe: String
        if line.count == 0 {
            returnMe = "There is no one to be served."
        }
        else {
            returnMe = "Now serving \(line[0])!"
            line.removeFirst()
        }
        return returnMe
    }
    
    func lineDescription() -> String {
        var returnMe: String
        if line.count == 0 {
            returnMe = "The line is currently empty."
        }
        else {
            returnMe = "The line is:\n "
            for (index, name) in line.enumerated() {
                returnMe += "\(index + 1). \(name)\n"
            }
        }
        return returnMe
    }
    
}
