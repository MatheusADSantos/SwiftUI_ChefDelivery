//
//  StoreDetailView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    
    var body: some View {
        Text("Tela - \(store.name)")
    }
}

struct StoreDetailView_Preview: PreviewProvider {
    static var previews : some View {
        StoreDetailView(store: storesMock[0])
    }
}
