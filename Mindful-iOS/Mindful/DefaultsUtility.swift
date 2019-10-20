//
//  DefaultsUtility.swift
//  Mindful
//
//  Created by Zain Ali on 10/20/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import Foundation

class DefaultsUtility {
    
    static func set_defaults(data: UserData){
        let defaults = UserDefaults.standard
        
        defaults.set(data.level, forKey: "level")
        defaults.set(data.exp, forKey: "experience")
        defaults.set(data.daily_goals, forKey: "daily_goals")
        defaults.set(data.accountMade, forKey: "account")
    }
    
    static func retrive() -> UserData {
        let defaults = UserDefaults.standard
        var data = UserData()
        
        data.exp = defaults.object(forKey: "experience") as? Int ?? Int ()
        data.daily_goals = defaults.object(forKey: "daily_goals") as? [Int: String] ?? [Int: String] ()
        data.accountMade = defaults.object(forKey: "accountMade") as? Bool ?? Bool ()
        
        return data
    }
    
    static func refresh() {
        let defaults = UserDefaults.standard
        let lastAccessDate = UserDefaults.lastAccessDate!
        let daily_goals = [
            1: "Meditate for 10 minutes.",
            2: "Tell yourself something potitive.",
            3: "Excerise or take a walk.",
            4: "Do something you enjoy.",
            5: "Get 7 to 8 hrs of sleep"
        ]
        
        if !Calendar.current.isDateInToday(lastAccessDate) {
            defaults.set(daily_goals, forKey: "daily_goals")
        }
    }
    
    
}
