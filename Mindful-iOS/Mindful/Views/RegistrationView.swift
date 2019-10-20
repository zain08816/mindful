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
    @EnvironmentObject var data: DataUtility
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Text("Welcome to Mindful")
                .font(.largeTitle)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .padding(.all)
            Spacer().frame(height:100)
            Image("Icon")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.bottom, 50)
            TextField("Name", text: self.$data.user.name)
                .frame(width: 300).padding(.all)
            Button(action: {
                self.data.user.accountMade.toggle()
                self.presentationMode.wrappedValue.dismiss()
                DefaultsUtility.set_defaults(data: self.data.user)
                self.data.user.accountMade = false
                
            }) {
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
