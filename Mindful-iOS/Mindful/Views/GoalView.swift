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
    @State public var goalOne: Bool = true
    @State public var goalTwo: Bool = true
    @State public var goalThree: Bool = true
    @State public var goalFour: Bool = true
    @State public var goalFive: Bool = true
    @State var showAlert: Bool = false
    
    
    var body: some View {
        return ScrollView {
                VStack {
                    Text("Daily Goals")
                        .font(.title)
                        .padding(.bottom, 20)

                        VStack(spacing: 10){
                            if self.goalOne{
                                Button(action: {
                                    self.goalOne.toggle()
                                    self.data.user.exp += 5
                                }) {
                                    HStack{
                                        Text("Walk outside for 30 minutes")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("darkWhite"))
                                            .shadow(radius: 10)
                                            .padding(.all, 20)
                                    }
                                    .frame(width: 300, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10.0)
                                }
                            } else {
                                HStack{
                                    Text("Walk outside for 30 minutes")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("darkWhite"))
                                        .shadow(radius: 10)
                                        .padding(.all, 20)
                                }
                                .frame(width: 300, height: 100)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                            }
                            if self.goalTwo{
                                Button(action: {
                                    self.goalTwo.toggle()
                                    self.data.user.exp += 5
                                }) {
                                    HStack{
                                        Text("Meditate for 15 minutes")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("darkWhite"))
                                            .shadow(radius: 10)
                                            .padding(.all, 20)
                                    }
                                    .frame(width: 300, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10.0)
                                }
                            } else {
                                HStack{
                                    Text("Meditate for 15 minutes")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("darkWhite"))
                                        .shadow(radius: 10)
                                        .padding(.all, 20)
                                }
                                .frame(width: 300, height: 100)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                            }
                            if self.goalThree{
                                Button(action: {
                                    self.goalThree.toggle()
                                    self.data.user.exp += 5
                                }) {
                                    HStack{
                                        Text("Meditate for 30 minutes")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("darkWhite"))
                                            .shadow(radius: 10)
                                            .padding(.all, 20)
                                    }
                                    .frame(width: 300, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10.0)
                                }
                            } else {
                                HStack{
                                    Text("Meditate for 30 minutes")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("darkWhite"))
                                        .shadow(radius: 10)
                                        .padding(.all, 20)
                                }
                                .frame(width: 300, height: 100)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                            }
                            if self.goalFour{
                                Button(action: {
                                    self.goalFour.toggle()
                                    self.data.user.exp += 5
                                }) {
                                    HStack{
                                        Text("Meditate for 30 minutes")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("darkWhite"))
                                            .shadow(radius: 10)
                                            .padding(.all, 20)
                                    }
                                    .frame(width: 300, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10.0)
                                }
                            } else {
                                HStack{
                                    Text("Meditate for 30 minutes")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("darkWhite"))
                                        .shadow(radius: 10)
                                        .padding(.all, 20)
                                }
                                .frame(width: 300, height: 100)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                            }
                            if self.goalFive{
                                Button(action: {
                                    self.goalFive.toggle()
                                    self.data.user.exp += 5
                                }) {
                                    HStack{
                                        Text("Meditate for 30 minutes")
                                            .font(.headline)
                                            .fontWeight(.semibold)
                                            .foregroundColor(Color("darkWhite"))
                                            .shadow(radius: 10)
                                            .padding(.all, 20)
                                    }
                                    .frame(width: 300, height: 100)
                                    .background(Color.blue)
                                    .cornerRadius(10.0)
                                }
                            } else {
                                HStack{
                                    Text("Meditate for 30 minutes")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("darkWhite"))
                                        .shadow(radius: 10)
                                        .padding(.all, 20)
                                }
                                .frame(width: 300, height: 100)
                                .background(Color.gray)
                                .cornerRadius(10.0)
                            }
                        }.padding(.bottom, 20)
                }
//            VStack{
//                Text("Long Term Goals")
//                .font(.title)
//                ScrollView{
//                    VStack{
//                        Text("asdfasdf")
//                    }
//                }
//            }
            
        }.alert(isPresented: $showAlert) {
            Alert(title: Text("Important message"), message: Text("Wear sunscreen"), dismissButton: .default(Text("Got it!")))
        }
    }
}

struct GoalView_Previews: PreviewProvider {
    static var previews: some View {
        GoalView()
    }
}
