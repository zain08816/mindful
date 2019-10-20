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
        ZStack {
            
            VStack(spacing: 10.0){
                Spacer().frame(height: 50)
                ZStack{
                    Circle()
                        .fill(Color("darkWhile"))
                        .frame(height: 230)
                        .shadow(radius: 10)
                    Image(systemName: "faceid")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(100)
                }
                Spacer().frame(height: 80)
                Text("Kirtan Patel").font(.largeTitle)
                Text("Level 1")
                    .font(.title)
                Text("Experience: 1000 xp")
                Spacer()
            }

        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
