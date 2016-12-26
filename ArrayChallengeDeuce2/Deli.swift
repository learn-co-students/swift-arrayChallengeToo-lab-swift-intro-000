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
            
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }  else if line.count == 0 {
            line.insert(name, at: 0)
            return "Welcome \(name), you're first in line!"
            
        }  else {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
        
    }
    
    
    // 2
    
    func nowServing() -> String {
        
        if line.count == 0 {
            return "There is no one to be served."
        } else {
            
            let firstInLine: String = line[0]
            line.remove(at:0)
            return "Now serving \(firstInLine)!"
            
        }
        
    }
    
    // 3
    
     func lineDescription() -> String {
            
            if line.count == 0 {
                return "The line is currently empty."
            } else {
                
                var waitingList: String = ""
                for (index,customer) in line.enumerated() {
                    
                    waitingList = "\(waitingList)\n" + "\(index + 1). \(customer)"
                }
                
               // print("The line is: \n \(waitingList)")
                return  "The line is:\(waitingList)"
            }
            
        }
    
}
