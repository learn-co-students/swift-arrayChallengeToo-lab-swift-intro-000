//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    
    var vpClients: [String] = []
    var line: [String] = []

    //get customer position
    func findPosition( customerName:String) -> Int{
        var count = 1
        
        for linePosition in line {
            if (linePosition == customerName){
                return count
            }
            count += 1
            }
        return count
    }

    
    //get line with prefixed numbers
    
    // 1
    func addNameToLine(name: String) -> String {
        
        if(name == "Billy Crystal" || name == "Meg Ryan"){
            line.insert(name, at: 0)
        }
        else{
            line.append(name)
            }
        
        if(name == "Billy Crystal" || name == "Meg Ryan"){
            return "Welcome \(name)! You can sit wherever you like."
        }
        else if (name == line[0]){
            return "Welcome \(name), you're first in line!"
        }
        else{
            return "Welcome \(name), you're number \(findPosition(customerName: name)) in line."
        }
    }

    
    // 2
    func nowServing() -> String {
        
        var nextInLine: String
        
        if line.isEmpty{
            return "There is no one to be served."
        }
        else {
            
            nextInLine = line[0]
            line.remove(at: 0)
            return "Now serving \(nextInLine)!"
            
        }

    }
    
        // 3
    //enumerate line array to get customer numbers
    func buildEnumArray(takeAnArray:[String])->[String]{
        var enumLine:[String] = []

        for(index,step) in line.enumerated(){
             enumLine.append("\(index + 1). \(step)")
        }
        return enumLine
    }
    
    
    func lineDescription() -> String {
        
        //init with empty string var to get it to return outside scope of for loop
        var thisFormatString: String = ""
       if (line.isEmpty){
            return "The line is currently empty."
            }
       else{
        for pplOnLine in buildEnumArray(takeAnArray: line) {
            thisFormatString += "\n\(pplOnLine)"
            }
        }
        return "The line is:\(thisFormatString)"
    }

}


