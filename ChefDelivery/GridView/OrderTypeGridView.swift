//
//  OrderTypeGridView.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 09/04/24.
//

import SwiftUI

struct OrderTypeGridView: View {
    
    var gridLayout: [GridItem] {
        return Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    }

    var body: some View {
        LazyHGrid(rows: gridLayout, spacing: 15, content: {
            ForEach(ordersMock) { orderItem in
                OrderTypeView(orderType: orderItem)
            }
        })
        .frame(height: 200)
        .padding(.all, 15)
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
            .previewLayout(.sizeThatFits)
    }
}
