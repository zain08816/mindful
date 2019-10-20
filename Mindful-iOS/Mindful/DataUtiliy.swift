//
//  DataUtiliy.swift
//  Mindful
//
//  Created by Zain Ali on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import Foundation

struct DataUtility {
    
    
    let level_names = [
        1 : "bruh",
        2 : "super bruh",
        3 : "ultimate bruh",
        4 : "Zenyatta"
    ]

    let daily_goals = [
        "Meditate for 10 minutes." : false,
        "Tell yourself something potitive." : false,
        "Excerise or take a walk." : false,
        "Do something you enjoy." : false,
        "Get 7 to 8 hrs of sleep" : false
    ]

    var gold:Int
    var exp:Int
    var level:Int
    let max_level = 4
    var next_level_exp:Int
    var bonus:Int {
        get {
            return level*1
        }
    }
    var daily_points:Int {
        get {
            return bonus + 4
        }
    }
    var next_level_name:String
    
    mutating func check_next_rank(level: Int){
        if self.level != self.max_level {
            next_level_name = level_names[level+1]!
        } else {
            next_level_name = "Max Level"
        }
        
    }
    
    
    mutating func check_rankup(level: Int, next_level_exp: Int){
        if (level != max_level) && (exp == next_level_exp) {
            self.level = level + 1
        }
    }
        
    



}
