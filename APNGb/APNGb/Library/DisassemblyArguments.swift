//
//  DisassemblyArguments.swift
//  APNGb
//
//  Created by Stefan Godoroja on 10/19/16.
//  Copyright © 2016 Godoroja Stefan. All rights reserved.
//

import Cocoa

final class DisassemblyArguments: NSObject, CommandArgumentable {
    
    var framesNamePrefix = "frame"
    var sourceAnimationImagePath = String.empty
    var saveFramesPath = String.empty
    
    // MARK: - CommandArgumenting
    
    func havePassedValidation() -> Bool {
        let arguments = commandArguments()
        
        for argument in arguments {
            
            if argument == String.empty {
                return false
            }
        }
        
        return true
    }
    
    func commandArguments() -> [String] {
        return [sourceAnimationImagePath, framesNamePrefix]
    }
    
}
