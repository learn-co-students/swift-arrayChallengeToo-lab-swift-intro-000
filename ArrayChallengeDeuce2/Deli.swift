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
            line.insert(name, at:0)
        } else {
            line.append(name)
        }
        
        
        if name == "Billy Crystal" {
            return "Welcome Billy Crystal! You can sit wherever you like."
        } else if name == "Meg Ryan" {
            return  "Welcome Meg Ryan! You can sit wherever you like."

        } else if name == line[0] {
            return "Welcome \(name), you're first in line!"
        } else {
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if line.isEmpty {
            return "There is no one to be served."
        } else {
            var currently = line[0]
            line.remove(at:0)
            return "Now serving \(currently)!"
        }

    }
    
    
    // 3
    func lineDescription() -> String {
        
        if line.isEmpty {
            return "The line is currently empty."
        } else {
            var lineCustomers = "The line is:"
            for (index, customer) in line.enumerated() {
                lineCustomers.append("\n\(index + 1).\(customer)")
            }
            return lineCustomers
        }

    }
    
}
