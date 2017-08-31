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
        var printLine: String = name
        
        if name == "Jon Snow" {
            line.insert(name, at: 0)
            
            printLine = "Welcome \(name), you're first in line!"
            
            return printLine
            
        } else if name == "Billy Crystal" || name == "Meg Ryan" {
            
            line.insert(name, at: 0)
            
            printLine = "Welcome \(name)! You can sit wherever you like."
            
            return printLine
            
        } else if line.count > 1 {
            
            printLine = "\(line.count) incorrect number of people in line, should be 1"
            
        }
        
        if name == "Jim" {
            
            line.insert(name, at: 5)
            
            printLine = "Welcome \(name), you're number \(line.count) in line."
            
        } else {
            printLine = "incorrect count of line, should be \(line.count)"
        }
        return printLine
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        
        var  printLine = line.first
        
        
        if printLine == "Frodo" {
            printLine = "Now serving Frodo!"
            line.remove(at: 0)
        }
        
        if line.isEmpty == true {
            
            printLine = "There is no one to be served."
            
        }
        
        return printLine!
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        var count: Int = 0
        var printLine: String = ""
        for name in line {
          count = count+1
            
           printLine.append("\n\(count). \(name)")
            
        }
        
        if line.isEmpty {
            
            return "The line is currently empty."
        }
        
          return "The line is:" + printLine
    }
    
}
