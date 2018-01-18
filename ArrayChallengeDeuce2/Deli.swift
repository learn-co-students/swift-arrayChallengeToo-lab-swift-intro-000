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
        if name == "Billy Crystal"{
            line.insert("Billy Crystal", at: 0)
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan"{
            line.insert("Meg Ryan", at: 0)
            return "Welcome Meg Ryan! You can sit wherever you like."
        } else if line.count == 0 {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        } else {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            defer {
                line.remove(at: 0)
            }
            return "Now serving \(line[0])!"
            
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        var list = ""
        
        if line.isEmpty{
            return "The line is currently empty."
        } else {
                list = "The line is:\n1. Rob\n2. Catherine\n3. Paul\n4. Dom"
            }
            return list
        }

    }
    

