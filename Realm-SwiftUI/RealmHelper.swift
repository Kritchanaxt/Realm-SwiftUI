//
//  RealmHelper.swift
//  Realm-SwiftUI
//
//  Created by Kritchanat on 3/11/2567 BE.
//

import Foundation
import RealmSwift

class RealmHelper {
    
    static func inMemoryRealm() -> Realm {
        var conf = Realm.Configuration.defaultConfiguration
        conf.inMemoryIdentifier = "preview"
        let realm = try! Realm(configuration: conf)
        return realm
    }
    
    static func realmWithItems() -> Realm {
        let realm = inMemoryRealm()
        
        let allItems = realm.objects(Item.self)
        
        if allItems.count == 0 {
            try? realm.write({
                for _ in 0...9 {
                    realm.add(Item())
                }
            })
        }
        
        return realm
    }
    
    
}
