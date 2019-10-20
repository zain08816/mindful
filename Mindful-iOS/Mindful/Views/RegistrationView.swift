//
//  RegistrationView.swift
//  Mindful
//
//  Created by Kirtan Patel on 10/19/19.
//  Copyright © 2019 Kirtan Patel. All rights reserved.
//

import SwiftUI

struct RegistrationView: View {
    @State private var name: String = ""
    var body: some View {
        VStack{
            Text("Welcome to Mindful")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
            Spacer().frame(height:100)
            Image(systemName: "faceid")
                .resizable()
                .frame(width: 200, height: 200)
                .padding(.bottom, 100)
            TextField("Name", text: $name)
                .frame(width: 300).padding(.all)
            Button(action: {}) {
                Text("Register")
                    .foregroundColor(Color.white)
            }
            .frame(width: 190, height:50)
            .background(Color.blue)
            .cornerRadius(16)
            .shadow(radius: 10)
            .padding(.all)
            Spacer()

        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
