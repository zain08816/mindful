//
//  DataUtiliy.swift
//  Mindful
//
//  Created by Zain Ali on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import Foundation

struct UserData {
    
    let defaults = UserDefaults.standard
    
    init() {
        name = ""
        exp = 0
        level = 1
        max_level = 4
        accountMade = true
    }
    
    //let goals: 
    var name:String
    var exp:Int
    var level:Int
    let max_level:Int
    var accountMade:Bool
    
    var next_level_exp:Int {
        get {
            return level*10
        }
    }

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
    
   
    

    let level_names = [
        1 : "bruh",
        2 : "super bruh",
        3 : "ultimate bruh",
        4 : "Zenyatta"
    ]
    var daily_goals = [
        "Meditate for 10 minutes." : false,
        "Tell yourself something potitive." : false,
        "Excerise or take a walk." : false,
        "Do something you enjoy." : false,
        "Get 7 to 8 hrs of sleep" : false
    ]
    
    
    
    mutating func check_rankup(level: Int, next_level_exp: Int, exp: Int){
        if (level != max_level) && (exp >= next_level_exp) {
            self.level = level + 1
            self.exp = exp - next_level_exp
        }
    }
    
        
    
    static func save_data(level: Int, exp: Int, defaults: UserDefaults) {
        defaults.set(level, forKey: "level")
        defaults.set(exp, forKey: "experience")
        
    }
    
    

}
