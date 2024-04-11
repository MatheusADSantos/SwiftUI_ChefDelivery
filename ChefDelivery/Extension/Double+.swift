//
//  Double+.swift
//  ChefDelivery
//
//  Created by Matheus Santos on 11/04/24.
//

import Foundation


extension Double {
    
    func formatPrice() -> String {
        let formatteString = String(format: "%.2f", self)
        return formatteString.replacingOccurrences(of: ".", with: ",")
    }
    
}
