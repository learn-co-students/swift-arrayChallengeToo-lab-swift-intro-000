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
        
        line.append(name)
        
        var number = 0
        
        
        for printer in line {
            number += 1
            
            if printer == "Billy Crystal" || printer == "Meg Ryan" {
                
                print ("Welcome \(printer) You can sit wherever you like.")
            } else {
                print ("Welcome \(printer) You are in \(number) line.")
            }
            
        }
        return name
    }
    
    func serving() -> String {
        let name:String = ""
        
        if line.isEmpty {
            print("No one to be served")
        } else if !line.isEmpty {
            print("Serving \(line)")
        }
        return name
    }
    
    func lineServing() -> String {
        if line.isEmpty {
            return ("The line is currently empty.")
        } else {
            return "\(line)"
        }
    }
    
}
