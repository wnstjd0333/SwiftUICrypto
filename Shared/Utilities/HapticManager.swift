//
//  HapticManager.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/06/05.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func notification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}
