//
//  DataUtiliy.swift
//  Mindful
//
//  Created by Zain Ali on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import Foundation

struct UserData {
    
    init() {
        name = ""
        exp = 0
        level = 1
        max_level = 4
        next_level_exp = 0
        next_level_name = ""
        accountMade = true
    }
    
    var name:String
    var exp:Int
    var level:Int
    let max_level:Int
    var next_level_exp:Int
    var accountMade:Bool
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
    
    let defaults = UserDefaults.standard

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
    
    
    
    mutating func check_next_rank(level: Int){
        if self.level != self.max_level {
            self.next_level_name = level_names[level+1]!
        } else {
            self.next_level_name = "Max Level"
        }
        
    }
    
    
    mutating func check_rankup(level: Int, next_level_exp: Int, exp: Int){
        if (level != max_level) && (exp >= next_level_exp) {
            self.level = level + 1
            self.exp = exp - next_level_exp
        }
    }
    
        
    
    func save_data(level: Int, exp: Int, defaults: UserDefaults) {
        defaults.set(level, forKey: "level")
        defaults.set(exp, forKey: "experience")
        
    }
    
    
    



}
