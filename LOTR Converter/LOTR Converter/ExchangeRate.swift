//
//  ExchangeRate.swift
//  LOTR Converter
//
//  Created by Wael Shabana on 2024-01-30.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let text : String
    let rightImage: ImageResource
    
    var body: some View {
        HStack{
            //Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height:33)
            
            //Exchange rate text
            Text(text)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview{
    ExchangeRate(leftImage: .silverpiece, text: "1 Silver Piece = 4 Silver Pennies", rightImage: .silverpenny)
}
