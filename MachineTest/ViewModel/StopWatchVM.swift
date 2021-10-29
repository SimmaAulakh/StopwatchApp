//
//  StopWatchVM.swift
//  MachineTest
//
//  Created by Simranjeet Aulakh on 29/10/21.
//

import Foundation

class StopWatchVM {
    
    //MARK:- Variables
    var counter = 0.0
    var isPlaying = false
    
    //MARK:- User defined functions
    func timeFormat(_ value: Double) -> String{
        let hours = Int(value) / 3600
        let minute = Int(value) / 60 % 60
        let seconds = Int(value) % 60
        return String(format:"%02i:%02i:%02i",hours, minute, seconds)
    }

}
