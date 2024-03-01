//
//  CurrencyTip.swift
//  LOTR Converter
//
//  Created by Wael Shabana on 2024-02-01.
//

import Foundation
import TipKit

struct CurrencyTip: Tip {
    var title = Text("Change Currency")
    
    var message: Text?{
        Text("You can tap the left or the right currency to bring up the Select currency screen.")
    }
    
}
