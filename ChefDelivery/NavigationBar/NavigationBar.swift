//
//  NavigationBar.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 09/04/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        HStack {
            Spacer()
            Button("R. Vergueiro, 3029") {
                print("MADS")
            }
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            Spacer()
            Button(action: {}) {
                Image(systemName: "bell.badge")
                    .font(.title3)
                    .foregroundColor(.red)
            }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//#Preview {
//    NavigationBar()
//}
