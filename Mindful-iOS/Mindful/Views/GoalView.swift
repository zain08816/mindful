//
//  GoalView.swift
//  Mindful
//
//  Created by Kirtan Patel on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct GoalView: View {
    @EnvironmentObject var data: DataUtility
    var body: some View {
        ScrollView{
            VStack{
                Text("Task")
                Text("Task")
                Text("Task")
                Text("Task")
                Text("Task")
                Text("Task")

            }
        }.padding(.top)
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
