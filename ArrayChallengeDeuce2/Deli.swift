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
        /*
        
         In its implementation, it should add the name passed into this argument to the line stored property on the Deli class. (Exactly what that sentence means is explained when we get to the section on Classes). For now, you can see that line is created for you as an empty array of String 's. You can utilize this variable within all of the functions you create, you have full access to it.
         If the persons name is Billy Crystal, they should be positioned at the front of the line.
         If the persons name is Meg Ryan, they should be positioned at the front of the line.
         Everyone else should be added to the back of the line and wait their turn.
         The String this function should return is based on the following conditions (x represents the individuals name, y represents their position in line).
         If the person is first in line: "Welcome x, you're first in line!"
         If the persons name is Billy Crystal: "Welcome Billy Crystal! You can sit wherever you like."
         If the persons name is Meg Ryan: "Welcome Meg Ryan! You can sit wherever you like."
         Every other situation: "Welcome x, you're number y in line."
         */
        if(name == "Billy Crystal")
        {
            line.insert(name, at: 0)
            return("Welcome Billy Crystal! You can sit wherever you like.")
        }
        else if(name == "Meg Ryan")
        {
            line.insert(name, at: 0)
            return("Welcome Meg Ryan! You can sit wherever you like.")
        }
        else if(line.isEmpty)
        {
            line.insert(name, at: 0)
            return("Welcome \(name), you're first in line!")
        }
        else
        {
            line.append(name)
            return("Welcome \(name), you're number \(line.count) in line.")
        }
        
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        /*
         In its implementation the String that is returned is based on the following conditions (x represents the individuals name):
         If the line is empty: "There is no one to be served."
         If the line isn't empty: "Now serving x!"
         This function should do one more thing. It should remove the individual from the deliLine that it's about to serve.

         */
        if(line.isEmpty)
        {
            return("There is no one to be served.")
        }
        else
        {
           let nextServed =  line.remove(at: 0)
            return("Now serving \(nextServed)!")
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        /*
         This function should take no arguments but return back a String.
         The String to be returned back is based on the following conditions:
         If the line is empty: "The line is currently empty."
         Otherwise, return a String beginning with the "The line is:", and appending every customer in the line on a new line \n beginning with their number in the line. For example, if our line was represented as:
         var line = ["Albert Einstein", "Cher", "Neil deGrasse Tyson", "Yoshi"]
         The String to be returned should look like this:
         
         "The line is:
         1. Albert Einstein
         2. Cher
         3. Neil deGrasse Tyson
         4. Yoshi"
         */

        if(line.isEmpty)
        {
            return("The line is currently empty.")
        }
        else{
           var order = "The line is: \n"
            for (index, name) in line.enumerated()
            {
                order.append("\(index + 1). \(name) \n")
           
            }
            return order
           
        }
        
        
        
    }
    
}
