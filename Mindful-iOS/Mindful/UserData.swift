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
        max_level = 4
        accountMade = true
    }
    
    //let goals: 
    var name:String
    var exp:Int
    let max_level:Int
    var accountMade:Bool
    var perviousLevel:Int = 0
    
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
    var level:Int {
        get  {
            return Int(exp/10)
        }
    }
        
    let level_names = [
        1 : "Aware",
        2 : "Mindful",
        3 : "Thoughtful",
        4 : "Calm",
        5 : "Serenity",
        6 : "Relaxed",
        7 : "Zen",
        8 : "!Kirt",
        9 : "Sentient",
        10 : "Zenyatta"
    ]
    var daily_goals = [
        "Meditate for 10 minutes." : false,
        "Tell yourself something potitive." : false,
        "Excerise or take a walk." : false,
        "Do something you enjoy." : false,
        "Get 7 to 8 hrs of sleep" : false
    ]
    
    mutating func demo_reset(daily_goals: Dictionary<String, Bool>) {
        self.daily_goals = [
            "Meditate for 10 minutes." : false,
            "Tell yourself something potitive." : false,
            "Excerise or take a walk." : false,
            "Do something you enjoy." : false,
            "Get 7 to 8 hrs of sleep" : false
        ]
    }
    
    
        
    static func save_data(level: Int, exp: Int, defaults: UserDefaults) {
        defaults.set(level, forKey: "level")
        defaults.set(exp, forKey: "experience")
        
    }
    
    

}
