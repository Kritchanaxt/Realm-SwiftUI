//
//  Group.swift
//  Realm-SwiftUI
//
//  Created by Kritchanat on 3/11/2567 BE.
//

import Foundation
import RealmSwift

final class Group: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    @Persisted var items = RealmSwift.List<Item>()

}
