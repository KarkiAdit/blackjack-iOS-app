//
//  MessageDisplay.swift
//  blackjack
//
//


import SwiftUI

struct MessageDisplay: View {
    
    @Binding var message: String
    
    var body: some View {
        
        Text(message)
            .fixedSize()
            .font(.system(size: 18, weight: .heavy))
        
    }
}
