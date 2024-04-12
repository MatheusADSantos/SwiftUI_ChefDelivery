//
//  SotreItemView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 09/04/24.
//

import SwiftUI

struct StoreItemView: View {
    
    //    let store: StoreType
    @EnvironmentObject var store: StoreType
    
    
    var body: some View {
        HStack(alignment: .center, spacing: nil) {
            Image(store.logoImage)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .frame(width: 50, height: 50)
            Text(store.name)
                .font(.subheadline)
            Spacer()
        }.foregroundColor(.black)
    }
}

struct StoreItemView_Previews: PreviewProvider {
    static var previews : some View {
        StoreItemView()
            .environmentObject(storesMock[0])
            .previewLayout(.sizeThatFits)
    }
}
