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

        if !line[0].isEmpty {
            return "Welcome \(name), you're first in line!"
        }else{
            //Welcome Jim, you're number 6 in line.
            return "Welcome \(name), you're number \(line.count+1) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
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
        var newText: String = "The line is"
        if line.isEmpty{
            return "\(newText) currently empty."
        }else{
            for (index, names) in line.enumerated(){
//                line.append(names)
                newText.append(":\n\(index+1). \(names)\n")
            }
        }
//        print(newText)
         return newText
    }
}
