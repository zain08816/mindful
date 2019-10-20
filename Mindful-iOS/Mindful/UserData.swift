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
        8 : "Sentient",
        9 : "Trancended",
        10 : "Zenyatta"
    ]
    var daily_goals = [
        1: "Meditate for 10 minutes.",
        2: "Tell yourself something potitive.",
        3: "Excerise or take a walk.",
        4: "Do something you enjoy.",
        5: "Get 7 to 8 hrs of sleep"
    ]
    
    mutating func demo_reset(daily_goals: Dictionary<Int, String>) {
        self.daily_goals = [
            1: "Meditate for 10 minutes.",
            2: "Tell yourself something potitive.",
            3: "Excerise or take a walk.",
            4: "Do something you enjoy.",
            5: "Get 7 to 8 hrs of sleep"
        ]
    }
    
    
        
    static func save_data(level: Int, exp: Int, defaults: UserDefaults) {
        defaults.set(level, forKey: "level")
        defaults.set(exp, forKey: "experience")
        
    }
    
    

}
