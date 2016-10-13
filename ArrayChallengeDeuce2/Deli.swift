//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//
class Deli {

    var line: [String] = []
    var phrase = ""
    
    func addNameToLine(name: String) -> String {
        switch name {
        case "Billy Crystal":
            line.insert(name, at: 0)
            phrase = "Welcome Billy Crystal! You can sit wherever you like."
        case "Meg Ryan":
            line.insert(name, at: 0)
            phrase = "Welcome Meg Ryan! You can sit wherever you like."
        default:
            line.append(name)
            var indexToFill = line.index(of: name)! + 1
            if line.index(of: name)! == 0 {
                phrase = ("Welcome \(name), you're first in line!")
            } else {
                phrase = "Welcome \(name), you're number \(indexToFill) in line."
            }
        }
        
        print(phrase)
        return phrase
    }

    func nowServing() -> String {
        var shouts = ""
        var onLine = ""
        if !line.isEmpty {
            onLine = line.first!
            print("Now serving \(onLine)!")
            shouts = "Now serving \(onLine)!"
            line.removeFirst()
            print("Need to see this: \(line)")
        } else {
            shouts = "There is no one to be served."
        }
        return shouts
    }

    func lineDescription() -> String {
        var currentLineStatus = "The line is:"
        var interimHolder = ""
        if !line.isEmpty {
            for (index, person) in line.enumerated() {
                interimHolder = "\n\(index + 1). \(person)"
                currentLineStatus += interimHolder
            }
        } else {
            currentLineStatus = "The line is currently empty."
        }
        print(currentLineStatus)
        print(line)
        return currentLineStatus
    }
}
