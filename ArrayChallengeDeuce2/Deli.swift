//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli
{
    
    var line: [String] = []
    
    // 1
    // If the persons name is Billy Crystal or Meg Ryan, they should be positioned at the front of the line and return "Welcome Billy Crystal! You can sit wherever you like."
   
    // If the person is first in line: "Welcome x, you're first in line!"
    
    // Everyone else should be added to the back of the line and wait their turn.
    
    // Every other situation: "Welcome x, you're number y in line."
    

    
    func addNameToLine(name: String) -> String
    {
        if name == "Billy Crystal" || name == "Meg Ryan"
        {
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }
        else if line.isEmpty
        {
            line.append(name)
            return "Welcome \(name), you're first in line!"
        }
        else
        {
            line.append(name)
            return "Welcome \(name), you're number \(line.count) in line."
        }
    }

    
    
    // 2

//    If the line is empty: "There is no one to be served."
//    If the line isn't empty: "Now serving x!"
//    This function should do one more thing. It should remove the individual from the deliLine that it's about to serve.
    
    func nowServing() -> String
    {
        if line.isEmpty
        {
            return "There is no one to be served."
        }
        else
        {
            return "Now serving \(line.remove(at: 0))!"
        }

    }
    
    
    // 3
    

//    The String to be returned back is based on the following conditions:
//    If the line is empty: "The line is currently empty."
//    Otherwise, return a String beginning with the "The line is:", and appending every customer in the line on a new line \n beginning with their number in the line. For example, if our line was represented as:
    
    func lineDescription() -> String
    {
        if line.isEmpty
        {
            return "The line is currently empty"
        }
        else
        {
            var msg = "The line is:"
            
            for (possition, name) in line.enumerated()
            {
                msg += "\(possition + 1) \(name) "
            }
            
            return msg
        }
    }
}
