//
//  MeditationView.swift
//  Mindful
//
//  Created by Kirtan Patel on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct MeditationView: View {
    @State var scaleInOut = false
    @State var rotateInOut = false
    @State var moveInOut = false
    @State var textBreather = false
    @State private var opacity = 1.0
    
    
    
    
    var body: some View {
        // Credit to Frad Lee
        
        ZStack {
            Text("Breathe In and Out")
                .font(.title)
                .fontWeight(.light)
                .offset(y: -220)
                .opacity(opacity)
            
            ZStack {
                VStack {
                    Spacer()
                    ZStack {
                        ZStack {
                            Group {
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                            }
                            .frame(width: 160, height: 160, alignment: .center)
                            .offset(y: moveInOut ? -80 : 0)
                            Group {
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                            }
                            .frame(width: 160, height: 160, alignment: .center)
                            .offset(y: moveInOut ? 80 : 0)
                        }
                        .opacity(0.5)
                        ZStack {
                            Group {
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                            }
                            .frame(width: 160, height: 160, alignment: .center)
                            .offset(y: moveInOut ? -80 : 0)
                            Group {
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                            }
                            .frame(width: 160, height: 160, alignment: .center)
                            .offset(y: moveInOut ? 80 : 0)
                        }
                        .opacity(0.5).rotationEffect(.degrees(60))
                        ZStack {
                            Group {
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .top, endPoint: .bottom))
                            }
                            .frame(width: 160, height: 160, alignment: .center)
                            .offset(y: moveInOut ? -80 : 0)
                            Group {
                                Circle().fill(LinearGradient(gradient: Gradient(colors: [.green, .white]), startPoint: .bottom, endPoint: .top))
                            }
                            .frame(width: 160, height: 160, alignment: .center)
                            .offset(y: moveInOut ? 80 : 0)
                        }
                        .opacity(0.5).rotationEffect(.degrees(120))
                    }
                    .rotationEffect(.degrees(rotateInOut ? 90 : 0))
                    .scaleEffect(scaleInOut ? 1 : 1/4)
                    .animation(Animation.easeInOut.repeatForever(autoreverses: true).speed(1/14))
                    .onAppear() {
                        self.rotateInOut.toggle()
                        self.scaleInOut.toggle()
                        self.moveInOut.toggle()
                        withAnimation(.easeInOut(duration: 10.0)) {
                            self.opacity = self.opacity - 1
 
                        }
                    }
                    Spacer()
                }
            }
        }
    }
}

struct MeditationView_Previews: PreviewProvider {
    static var previews: some View {
        MeditationView()
    }
}
