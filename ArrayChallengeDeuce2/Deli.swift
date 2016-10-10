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
        var returnString = ""
                
       // TODO: Implement this function.
        if(name == "Billy Crystal"){
            line.insert(name, at: 0)
        }
        else if(name == "Meg Ryan") {
            line.insert(name, at: 0)
        }
        else {
            line.append(name)
        }
        
        print(line)
        
        for (index, lineNumber) in line.enumerated() {
           
            if (lineNumber == "Billy Crystal") {
                returnString = "Welcome \(lineNumber)! You can sit wherever you like."
                break
            }
            else if(lineNumber == "Meg Ryan"){
                 returnString = "Welcome \(lineNumber)! You can sit wherever you like."
                break
            }
            else if (index == 0){
                returnString = "Welcome \(lineNumber), you're first in line!"
                if(line.count == 0) {
                   break
                }
            }
            else {
                returnString = "Welcome \(lineNumber), you're number \(index + 1) in line."
            }
        }
        
        return returnString
    }
    
    
    // 2
    func nowServing() -> String {
        var returnString = ""
        // TODO: Implement this function.
        if(line.isEmpty){
            returnString = "There is no one to be served."
        }
        else {
            returnString = "Now serving \(line[0])!"
            line.remove(at: 0)
        }
       
        
        return returnString
    }
    
    
    // 3
    func lineDescription() -> String {
        var returnString = ""
        // TODO: Implement this function.
        if(line.isEmpty){
            returnString = "The line is currently empty."
        }
        else {
            returnString = "The line is:\n"
            for (index, lineOrder) in line.enumerated(){
                if((index + 1) < line.count) {
                    returnString += "\(index + 1). \(lineOrder)\n"
                }
                else {
                    returnString += "\(index + 1). \(lineOrder)"
                }
                
            }
        }
        
        return returnString
    }
    
}
