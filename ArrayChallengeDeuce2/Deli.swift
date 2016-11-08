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
//        if name == "Billy Crystal" {
//            line.insert("Billy Crystal", at: 0)
//        } else if name == "Meg Ryan" {
//            line.insert("Meg Ryan", at: 0)
//        } else {
//            line.append(name)
//        }
//        
//        for (x, y) in line.enumerated() {
//            
//            if y == "0" {
//                print("Welcome \(x), you're first in line!")
//            } else if y == "Billy Crystal"{
//                print("Welcome Billy Crystal! You can sit wherever you like.")
//            } else if y == "Meg Ryan" {
//                print("Welcome Meg Ryan! You can sit wherever you like.")
//            } else {
//                print( "Welcome \(x), you're number \(y) in line.")
//            }
//        }
//        return name
        
        if (name == "Billy Crystal" || name == "Meg Ryan"){
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        } else {
            line.append(name)
            let length = line.count
            if length == 1 {
                return "Welcome \(name), you're first in line!"
            } else {
                return "Welcome \(name), you're number \(length) in line."
            }
        }
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
            if line.isEmpty {
                return "There is no one to be served."
            } else {
                let position = line[0]
                line.remove(at: 0)
                return "Now serving \(position)!"
            }
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var list = "The line is:"
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            for (x, y) in line.enumerated() {
                list.append("\n\(x + 1). \(y)")
            }
            return list
        }


    }
    
}
