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
        VStack(alignment: .leading) {
            Image(store.headerImage).resizable().scaledToFit()
            
            HStack {
                Text(store.name).font(.title).bold()
                Spacer()
                Image(store.logoImage)
            }.padding(.vertical, 8).padding(.horizontal)
            
            HStack {
                Text(store.location)
                Spacer()
                ForEach(1...store.stars, id: \.self) { _ in
                    Image(systemName: "star.fill").foregroundColor(.yellow).font(.caption)
                }
            }.padding(.vertical, 8).padding(.horizontal)
            
            Text("Produtos").font(.title2).bold().padding()
        }
        .navigationTitle(store.name)
        .navigationBarTitleDisplayMode(.automatic)
    }
}

struct StoreDetailView_Preview: PreviewProvider {
    static var previews : some View {
        StoreDetailView(store: storesMock[1])
    }
}