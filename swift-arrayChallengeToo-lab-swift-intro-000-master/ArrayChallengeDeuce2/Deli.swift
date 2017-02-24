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
        
       var greeting = String()
        
        if line.isEmpty {
        line.insert(name, at: 0)
            greeting = "Welcome \(name), you're first in line"
        } else if name == "Billy Crystal" {
            line.insert("BillyCrystal", at: 0)
            greeting = "Welcome Billy Crystal!  You can sit whereever you like"
        } else if name == "Meg Ryan" {
            line.insert("Meg Ryan", at: 0)
            greeting = "Welcome Meg Ryan!  You can sit whereever you like"
        } else {
        line.append(name)
            greeting = "Welcome \(name), you're number \(line.count) in line"
        }
    return greeting
    }
    
            
            /* case "Billy Crystal":
            line.insert("\(name)", at: 0)
            case "Meg Ryan":
            line.insert("\(name)", at: 0)
             default:
            line.append("\(name)")
        }
        switch line[0] {
       case "Billy Crystal":
            greeting = "Welcome Billy Crystal! You can sit wherever you like."
            case "Meg Ryan":
            greeting = "Welcome Meg Ryan! You can sit wherever you like."
        default:
            for (index, person) in line.enumerated() {
                if index == 0 {
                greeting = "Welcome \(person), you're first in line!"
                } else {
                greeting = ("Welcome \(person) you're \(index + 1) in line")
                }
            }
        
        }
       return greeting

        
    } */
    
    
    // 2
    func nowServing() -> String {
        
       // TODO: Implement this function.
    
        
        if line.isEmpty {
        return "There is no one to be served"
        } else {
        let firstInLine = line[0]
            line.remove(at: 0)
        
    return "Now serving \(firstInLine)"
    }
    }
    
    
    
    // 3
    func lineDescription() -> String {
    
        var lineStat = "The line is:"
        
        if line.isEmpty{
        return "The line is currently empty"
        }else {
            for (index, name) in line.enumerated() {
            lineStat.append("\n\(index + 1). \(name)")
            }
            return lineStat
        }
        
       
    }
}

