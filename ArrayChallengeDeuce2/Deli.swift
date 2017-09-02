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
        
        switch name {
        case "Billy Crystal", "Meg Ryan":
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        default:
            line.append(name)
            var pos:Int
            pos = line.count
            if(pos == 1){
                return "Welcome \(name), you're first in line!"
            }else{
                return "Welcome \(name), you're number \(pos) in line."
            }
            
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
        if(line.isEmpty){
            return "There is no one to be served."
        }else{
            var serve:String
            serve = line[0]
            line.remove(at: 0)
            return "Now serving \(serve)!"
            
        }
        
    }
    
    
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
        
        var tString:String
        tString = "The line is:\n"
        if(line.count == 0){
            return "The line is currently empty."
        }
        print ("Ssssssssss...")
        print (line.count)
        for (n,c) in line.enumerated() {
            
            tString = tString + "\(n + 1). \(c)\n"
            print(tString)
        }
        print(tString)
        return String(tString.characters.dropLast())
    }
}
