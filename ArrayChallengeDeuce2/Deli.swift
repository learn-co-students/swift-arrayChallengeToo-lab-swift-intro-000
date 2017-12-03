//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var theVips: [String] = ["Billy Crystal", "Meg Ryan"]
    
    // 1
    func addNameToLine(name: String) -> String {
        // TODO: Implement this function.

        if(theVips.contains(name)){
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }else{
            line.append(name)
        }

        if (line[0] == name) {
         return "Welcome \(name), you're first in line!"
        }else{
        return "Welcome \(name), you're number \(line.count) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if line.isEmpty{
            return "There is no one to be served."
        }else{
            let tempName: String = line[0]
            line.remove(at: 0)
            return "Now serving \(tempName)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        if line.isEmpty{
            return "The line is currently empty."
        }else{
            var newText: String = "The line is:"
            for (index, names) in line.enumerated(){
                newText.append("\n\(index+1). \(names)")
//                newText += "\n\(index+1). \(names)\n"
//                newText = newText + "\n\(index+1). \(names)"
            }
            return newText
        }
//         return newText
    }
}
