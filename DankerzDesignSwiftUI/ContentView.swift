//
//  ContentView.swift
//  DankerzDesignSwiftUI
//
//  Created by Надія Возна on 20.05.2020.
//  Copyright © 2020 Надія Возна. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.all)
            VStack {
                Text("mAIessenger")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(.top, 10)
                Image("brain").resizable()
                    .frame(width: 121, height: 121)
                    .foregroundColor(.white)
                    .shadow(color: .black, radius: 4, x: 0, y: 0)
                    .padding(.bottom, 37)
                ZStack() {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color("rectangle"))
                        .padding(.leading, 5.5)
                        .padding(.trailing, 5.5)
                    VStack(spacing: 41) {
                        Text("one step to start".uppercased())
                            .font(.system(size: 24))
                            .fontWeight(.light)
                            .foregroundColor(Color("textTitle"))
                        TextField("ussername".uppercased(), text: $login)
                            .frame(width: 289, height: 52)
                            .background(Color.white)
                            .multilineTextAlignment(.center)
                            .cornerRadius(21)
                            .overlay(
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("background")))
                            .colorScheme(.light)
                        TextField("password".uppercased(), text: $password)
                            .frame(width: 289, height: 52)
                            .background(Color.white)
                            .multilineTextAlignment(.center)
                            .cornerRadius(21)
                            .overlay(
                                RoundedRectangle(cornerRadius: 21)
                                    .stroke(Color("background"), lineWidth: 1)
                        )
                            .colorScheme(.light)
                        Button(action:{}){
                            Text("go messaging".uppercased())
                                .font(.system(size: 24))
                                .fontWeight(.light)
                                .foregroundColor(.white)
                                .frame(width: 215, height: 49)
                                .background(Color("background"))
                                .cornerRadius(21)
                        }
                        .colorScheme(.light)
                        VStack {
                            Text("not have account?".uppercased())
                                .fontWeight(.light)
                            HStack {
                                Button(action: {}) {
                                    Text("sign up".uppercased())
                                        .colorScheme(.light)
                                        .foregroundColor(Color("background"))
                                }
                                Text("it's free".uppercased())
                                    .fontWeight(.light)
                                
                            }
                        }
                        .foregroundColor(Color("textFooter"))
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .environment(\.colorScheme, .light)
            ContentView()
                .environment(\.colorScheme, .dark)
        }
    }
}
