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
                
        switch name {
            
            case "Billy Crystal":
                line.insert("Billy Crystal", at: 0)
            
            case "Meg Ryan":
                line.insert("Meg Ryan", at: 0)
            
            default:
                line.append(name)
        }
        
        
        switch name {
            
            case "Billy Crystal":
                return "Welcome Billy Crystal! You can sit wherever you like."
            
            case "Meg Ryan":
                return "Welcome Meg Ryan! You can sit wherever you like."
            
        default:
            if(line.count == 1) {
                return "Welcome \(name), you're first in line!"
                
            }
            else {
                return "Welcome \(name), you're number \(line.count) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        var testo: String
        
        if(line.isEmpty) {
            testo = "There is no one to be served."
        }
        else {
            testo = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
        
        return testo
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        var testo: String
        
        if(line.isEmpty) {
            testo = "The line is currently empty."
        }
            
        else {
            testo = "The line is:"
            
            for (nr,nome) in line.enumerated() {
                testo.append("\n")
                testo.append(String(nr + 1))
                testo.append(". ")
                testo.append(nome)
            }
        }
        
        return testo
    }
    
}

























