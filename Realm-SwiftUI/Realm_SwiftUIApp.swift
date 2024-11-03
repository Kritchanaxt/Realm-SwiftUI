//
//  Realm_SwiftUIApp.swift
//  Realm-SwiftUI
//
//  Created by Kritchanat on 3/11/2567 BE.
//

import SwiftUI

@main
struct Realm_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            
            TabView {
                
                ContentView()
                    .tabItem {
                        Text("Main")
                    }
                
                ItemResultView()
                    .tabItem {
                        Text("Results")
                    }
            }
        }
    }
}
