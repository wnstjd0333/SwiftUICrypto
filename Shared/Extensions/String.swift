//
//  String.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/09/10.
//

import Foundation

extension String {
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
