//
//  UIApplication.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/05/12.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
