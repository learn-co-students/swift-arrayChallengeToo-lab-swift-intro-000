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
            line.insert(name, at:0)
        } else {
            line.append(name)
        }
        
        var returnString: String = ""
        
        for (index, names) in line.enumerated() {
            if (name == "Billy Crystal") {
                returnString = "Welcome Billy Crystal! You can sit wherever you like."
            } else if (name == "Meg Ryan") {
                returnString = "Welcome Meg Ryan! You can sit wherever you like."
            } else if (names == name && index == 0) {
                returnString = "Welcome \(name), you're first in line!"
            } else {
                returnString = "Welcome \(name), you're number \(index+1) in line."
            }
        }
        
//        for (index, names) in line.enumerated() {
//            if (index == 0 && names == "Billy Crystal") {
//                returnString = "Welcome Billy Crystal! You can sit wherever you like."
//            } else if (index == 0 && names == "Meg Ryan") {
//                returnString = "Welcome Meg Ryan! You can sit wherever you like."
//            } else if (index == 0) {
//                returnString = "Welcome \(names), you're first in line!"
//            } else {
//                returnString = "Welcome \(names), you're number \(index) in line."
//            }
//        }
        return returnString
    }
    
    
    // 2
    func nowServing() -> String {
        // TODO: Implement this function.
        
        var nowServingMessage: String = ""
        if line.isEmpty {
            nowServingMessage = "There is no one to be served."
        } else {
            nowServingMessage = "Now serving \(line[0])!"
            line.remove(at: 0)
            }
        return nowServingMessage
    }
    
    
    // 3
    func lineDescription() -> String {
        // TODO: Implement this function.

        var lineDescriptionMessage: String = ""
        var lineDescriptionArray: [String] = []
        var lineDescriptionArrayJoin: String = ""
        
        if line.isEmpty {
            lineDescriptionMessage = "The line is currently empty."
        } else {
            for (index, names) in line.enumerated() {
                lineDescriptionArray.append("\(index+1). \(names)")
                lineDescriptionArrayJoin = lineDescriptionArray.joined(separator: "\n")
                lineDescriptionMessage = "The line is:\n\(lineDescriptionArrayJoin)"
            }
        }
    
        return lineDescriptionMessage
    }
    
}
