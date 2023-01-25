//
//  ContentView.swift
//  SocialLoginUI
//
//  Created by 소하 on 2023/01/25.
//

import SwiftUI
import GoogleSignIn

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            GIDSignIn.sharedInstance.restorePreviousSignIn { user, error in
                // Check if `user` exists; otherwise, do something with `error`
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
