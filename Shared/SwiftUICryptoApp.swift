//
//  SwiftUICryptoApp.swift
//  Shared
//
//  Created by 金峻聖 on 2022/05/11.
//

import SwiftUI

@main
struct SwiftUICryptoApp: App {
    
    @StateObject var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
