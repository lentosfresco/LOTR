//
//  IconGrid.swift
//  LOTR Converter
//
//  Created by Wael Shabana on 2024-01-31.
//

import SwiftUI

struct IconGrid: View {
    @Binding var currency: Currency
    
    var body: some View {
        LazyVGrid(columns:[GridItem(), GridItem(), GridItem()]){

            ForEach(Currency.allCases){currency in
                if self.currency == currency{
                CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .overlay{
                        RoundedRectangle(cornerRadius:25).stroke(lineWidth: 3)
                            .opacity(0.5)
                    }
                } else {
                    CurrencyIcon(currencyImage: currency.image, currencyName: currency.name)
                        .onTapGesture {
                            self.currency = currency
                        }
                }
            }
        }
    }
}

#Preview {
    IconGrid(currency: .constant(.silverPenny))
}
