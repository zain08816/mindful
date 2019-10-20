//
//  ProfileView.swift
//  Mindful
//
//  Created by Kirtan Patel on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 10.0){
            Image(systemName: "faceid")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Kirtan Patel").font(.largeTitle)
            Text("Level 1")
                .font(.title)
            Text("Experience: 1000 xp")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
