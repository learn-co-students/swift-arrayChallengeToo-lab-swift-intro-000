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
        if(name == "Meg Ryan" || name == "Billy Crystal"){
            line.insert(name, at: 0)
            return "Welcome \(name)! You can sit wherever you like."
        }else{
            line.append(name)
            let lc = line.count
            
            if lc == 1{
                return "Welcome \(name), you're first in line!"
            }else{
                return "Welcome \(name), you're number \(lc) in line."
            }
        }
        
    }
    
    
    // 2
    func nowServing() -> String {
        let lc = line.count
        
        if lc == 0{
            return "There is no one to be served."
        }else{
            let name = line[0]
            line.remove(at: 0)
            return "Now serving \(name)!"
        }
    }
    
    
    // 3
    func lineDescription() -> String {
        let lc = line.count
        
        if lc == 0{
            return "The line is currently empty."
        }else{
            var listString = "The line is:"
            
            for (ix, name) in line.enumerated(){
                listString.append("\n\(ix+1). \(name)")
                print(listString)
            }
            
            print(listString)
            
            return listString
        }
    }
    
}
















