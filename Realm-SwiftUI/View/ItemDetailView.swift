//
//  ItemDetailView.swift
//  Realm-SwiftUI
//
//  Created by Kritchanat on 3/11/2567 BE.
//

import SwiftUI
import RealmSwift


struct ItemDetailView: View {
    
    @ObservedRealmObject var item: Item
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Enter a new name:")
            
            TextField("New name", text: $item.name)
                .textFieldStyle(.roundedBorder)
            
                .navigationBarTitle(item.name)
                .navigationBarItems(trailing: Toggle(isOn: $item.isFavorite) {
                    Image(systemName: item.isFavorite ? "heart.fill" : "heart")
                })
            
            Button {
                if let newItem = item.thaw(),
                   let realm = newItem.realm {
                    
                    try? realm.write {
                        realm.delete(newItem)
                    }
                }
                
            } label: {
                Text("delete")
            }
            .padding()
            
        }
        .padding()
    }
}


#Preview {
    NavigationView {
        ItemDetailView(item: Item.previewExample())
    }
}
