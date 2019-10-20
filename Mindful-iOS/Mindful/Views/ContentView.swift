//
//  ContentView.swift
//  Mindful
//
//  Created by Kirtan Patel on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 2
    var body: some View {
        TabView(selection: $selection) {
            MeditationView().tabItem {
                VStack {
                    Image(systemName: "heart.circle.fill")
                    Text("Mindfulness")
                }
                
            }.tag(1)
            GoalView().tabItem {               VStack {
                    Image(systemName: "pencil")
                    Text("Task")
                }
                
            }.tag(2)
            ProfileView().tabItem {
                VStack {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
                
            }.tag(3)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
