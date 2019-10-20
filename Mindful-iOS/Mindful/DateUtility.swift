//
//  DateUtility.swift
//  Mindful
//
//  Created by Zain Ali on 10/20/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import Foundation

extension UserDefaults {

    static let defaults = UserDefaults.standard

    static var lastAccessDate: Date? {
        get {
            return defaults.object(forKey: "lastAccessDate") as? Date
        }
        set {
            guard let newValue = newValue else { return }
            guard let lastAccessDate = lastAccessDate else {
                defaults.set(newValue, forKey: "lastAccessDate")
                return
            }
            if !Calendar.current.isDateInToday(lastAccessDate) {
                print("remove Persistent Domain")
                UserDefaults.reset()
            }
            defaults.set(newValue, forKey: "lastAccessDate")
        }
    }

    static func reset() {
        defaults.removePersistentDomain(forName: Bundle.main.bundleIdentifier ?? "")
    }

    
}
