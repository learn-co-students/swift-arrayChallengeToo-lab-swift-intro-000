//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


extension String {
    mutating func addString(str: String) {
        self = self + str
    }
}


class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
        
       
        
        if(name == "Billy Crystal"){
            self.line.insert(name,at:0)
        }
        else if(name == "Meg Ryan"){
            self.line.insert(name,at:0)
        }
        else{
            self.line.append(name)

        }
        
        if(self.line.count == 1){
            return "Welcome \(name), you're first in line!"
        }
        else if(name == "Billy Crystal"){
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        else if(name == "Meg Ryan"){
            return "Welcome Meg Ryan! You can sit wherever you like."
        }
    
        
        return "Welcome \(name), you're number \(self.line.count) in line."
        
    }
    
    
    // 2
    func nowServing() -> String {
        
        if self.line.count > 0 {
            guard let name:String = self.line.first else{
                return "There is no one to be served."
            }
            self.line.removeFirst()
            return "Now serving \(name)!"
        }
        return "There is no one to be served."
        
    }
    
    
    // 3
    func lineDescription() -> String {
        var res:String =  "The line is:"

        if self.line.count > 0 {
            for (idx,element) in self.line.enumerated(){
                
                res.addString(str: "\n\(idx + 1). \(element)")
            }
            return res
        }
    
        return "The line is currently empty."
    }
    
}
