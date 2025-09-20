//
//  SceneDelegate.swift
//  AlloJari
//
//  Created by MAC on 20/9/2025.
//


import SwiftUI
import UIKit

class SceneDelegate: NSObject, UIWindowSceneDelegate {
    
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let appFlow = AppFLow()
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = UIHostingController(rootView: appFlow)
        window?.makeKeyAndVisible()
    }
}

struct AppFLow: View {
    @State var isLunchScreen = true
    var body: some View {
        VStack {
            if isLunchScreen {
                LunchScreen()
            }
            else {
                ContentView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                self.isLunchScreen.toggle()
            }
        }
    }
}
