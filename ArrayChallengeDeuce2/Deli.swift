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
		
		if name == "Billy Crystal" || name == "Meg Ryan" {
			line.insert(name, at: 0)
		} else {
			line.append(name)
		}
		
//	If the persons name is Billy Crystal: "Welcome Billy Crystal! You can sit wherever you like."

		if name == "Billy Crystal" {
			return "Welcome Billy Crystal! You can sit wherever you like."
		}
			
//	If the persons name is Meg Ryan: "Welcome Meg Ryan! You can sit wherever you like."
			
		else if name == "Meg Ryan" {
			return "Welcome Meg Ryan! You can sit wherever you like."
		}
		
//	If the person is first in line: "Welcome x, you're first in line!"
		
		else if name == line.first {
			return "Welcome \(name), you're first in line!"
		}

		
//	Every other situation: "Welcome x, you're number y in line."
		
		return "Welcome \(name), you're number \(line.count) in line."
    }
	
    // 2
    func nowServing() -> String {
        
        // TODO: Implement this function.
		
		if line.isEmpty {
			return "There is no one to be served."
		}
		
		let current = line[0]
		line.remove(at: 0)
		
		return "Now serving \(current)!"
		
    }
	
    // 3
    func lineDescription() -> String {
        
        // TODO: Implement this function.
		
		if line.isEmpty {
			return "The line is currently empty."
		}
		var theLineIs = "The line is:"
		for (num, person) in line.enumerated() {
			theLineIs += "\n\(num + 1). \(person)"
		}
		
		return theLineIs
    }
    
}
