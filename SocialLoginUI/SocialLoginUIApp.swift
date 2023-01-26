//
//  SocialLoginUIApp.swift
//  SocialLoginUI
//
//  Created by 소하 on 2023/01/25.
//

import SwiftUI
import GoogleSignIn

@main
struct SocialLoginUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(userData: UserData(url: nil, name: "", email: ""))
                .onOpenURL { url in
                    GIDSignIn.sharedInstance.handle(url)
                }
        }
    }
}
