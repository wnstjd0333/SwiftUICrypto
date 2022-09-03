//
//  Date.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/09/03.
//

import Foundation

extension Date {
//    2021-11-10T14:24:11.849Z
    init(coinGeckoString: String) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        let date = formatter.date(from: coinGeckoString) ?? Date()
        self.init(timeInterval: 0, since: date)
    }
    
    private var shortFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    func asShortDateString() -> String {
        return shortFormatter.string(from: self)
    }
}
