//
//  ContentView.swift
//  Mindful
//
//  Created by Zain Ali on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import Foundation

let level_names = [
    1 : "bruh",
    2 : "super bruh",
    3 : "ultimate bruh",
    4 : "Zenyatta"
]

let daily_goals = [
    "Meditate for 10 minutes." : False,
    "Tell yourself something potitive." : False,
    "Excerise or take a walk." : False,
    "Do something you enjoy." : False,
    "Get 7 to 8 hrs of sleep" : False
]

let gold = 0
let exp = 0
let level = 1
let max_level = level_names.count - 1
let next_level_exp = level*10
let bonus = 1*level
let daily_points = bonus + 4

if level != max_level {
    let next_level_name = level_names[level+1]
} else {
    next_level_name = "Max Level"
}

if (level != max_level) && (exp == next_level_exp) {
    level += 1
}


