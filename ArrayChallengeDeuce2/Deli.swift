//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    var greeting: String = ""
    // 1
    func addNameToLine(name: String) -> String {
                
        if(name == "Billy Crystal" || name == "Meg Ryan"){
            line.insert(name, at: 0)
            greeting = "Welcome \(name)! You can sit wherever you like."
            
        }else{
            line.append(name)
            if(line.count == 1){
                greeting = "Welcome \(name), you're first in line!"
            }else{
                greeting = "Welcome \(name), you're number \(line.count) in line."

            }
        }
    
        return greeting

        
    }
    
    
    
    // 2
    func nowServing() -> String {
        var serving = ""
        if(line.isEmpty){
            serving = "There is no one to be served."
        }else{
            let name = line.remove(at: 0)
            serving = "Now serving \(name)!"
        }
        return serving
       
       
    }
    
    
    // 3
    func lineDescription() -> String {
        var lineDesc : String = ""
        if(line.isEmpty){
            lineDesc = "The line is currently empty."
        }else{
            lineDesc = "The line is:\n"
            for (index,name) in line.enumerated(){
                lineDesc += "\(index+1). \(name)"
                if(index < line.count - 1){
                    lineDesc += "\n"
                }
            }
        }
        return lineDesc

    }
    
}
