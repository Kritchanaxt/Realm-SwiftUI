//
//  ContentView.swift
//  Realm-SwiftUI
//
//  Created by Kritchanat on 3/11/2567 BE.
//

import SwiftUI
import RealmSwift
import Network

struct ContentView: View {
    
    @ObservedResults(Group.self) var groups
    
    var body: some View {
        
        if let group = groups.first {
            ItemListView(group: group)
        } else {
            ProgressView()
                .onAppear {
                    $groups.append(Group())
                }
        }
    }
}


#Preview {
    ContentView()
}


