//
//  StoreTabView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 10/04/24.
//

import SwiftUI

struct StoresContainerView: View {
    
    let title = "Lojas"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title).font(.headline)
            VStack(alignment: .leading, spacing: 30) {
                ForEach(storesMock) { mock in
                    StoreItemView(orders: mock)
                }
            }
        }.padding(20)
    }
}


struct StoreTabView_Preview: PreviewProvider {
    static var previews : some View {
        StoresContainerView().previewLayout(.sizeThatFits)
    }
}
