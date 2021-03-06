//
//  ProfileView.swift
//  Mindful
//
//  Created by Kirtan Patel on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var data: DataUtility
    var body: some View {
        ZStack {
            
            VStack(spacing: 10){
                Spacer().frame(height: 50)
                ZStack{
                    Circle()
                        .fill(Color("darkWhite"))
                        .frame(height: 230)
                        .shadow(color: Color("darkBlack").opacity(0.5),radius: 10)
                    Image(systemName: "faceid")
                        .resizable()
                        .frame(width: 200, height: 200)
                        .cornerRadius(100)
                }
                Spacer().frame(height: 80)
                Text(self.data.user.name).font(.largeTitle)
                Text("Rank: \(self.data.user.level_names[self.data.user.level]!)").font(.title)
                Text("Level \(self.data.user.level)")
                    .font(.headline)
                Text("Experience: \(self.data.user.exp) xp")
//                HStack{
//                    Rectangle.frame(height: 20, width: self.data.user.exp)
//                    Spacer()
//                }
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
