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
        let postion = line.count + 1
        if (name == "Billy Crystal" || name == "Meg Ryan"){
            line.insert(name, at: 0)
        } else {
            line.append(name)
        }
        
        switch name {
            case "Billy Crystal":
                return "Welcome Billy Crystal! You can sit wherever you like."
            case "Meg Ryan":
                return "Welcome Meg Ryan! You can sit wherever you like."
            case line[0]:
                return "Welcome \(name), you're first in line!"
            default:
                return "Welcome \(name), you're number \(postion) in line."
        }
    }
    
    
    // 2
    func nowServing() -> String {
        if line.isEmpty {
            return "There is no one to be served."
            
        } else {
            
            let firstInLine = line[0]
            line.remove(at: 0)
            return "Now serving \(firstInLine)!"
            }
    }
    //helper function
        
        func buildList() -> [String]{
            var customersEnum:[String] = []
            
            for (index,customersInLine) in line.enumerated(){
                customersEnum.append("\n\(index + 1 ). \(customersInLine)")
            }
            return customersEnum
        }
    
    // 3
    func lineDescription() -> String {
       var lineFormat: String = ""
        
        if line.isEmpty {
            return "The line is currently empty."
        
        } else {
        
            for customers in buildList(){
                lineFormat += "\(customers)"
            }
        return "The line is:\(lineFormat)"
        }
    }
}



