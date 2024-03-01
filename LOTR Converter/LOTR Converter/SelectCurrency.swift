//
//  SelectCurrency.swift
//  LOTR Converter
//
//  Created by Wael Shabana on 2024-01-30.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    
    var body: some View {
        ZStack{
            // parchment background image
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack{
                // Text
                Text("Select the currency you are starting with:")
                 
                
                // Currency icons
                IconGrid(currency: $topCurrency)
                
                // Text
                Text("Select the currency you would like to convert to:")
                 
                
                //Currency icons
                IconGrid(currency: $bottomCurrency)

                // Done button
                Button("Done"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)
            }
            .padding()
            .fontWeight(.bold)
            .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPiece))
}
