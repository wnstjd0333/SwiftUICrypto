//
//  ScreenPreview.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/09/02.
//

import SwiftUI

struct ScreenPreview<Content>: View where Content: View {
    private let devices: [PreviewDevice]
    private let edgesIgnoringSafeArea: Edge.Set
    private let content: () -> Content
    
    init(devices: [PreviewDevice],
         edgesIgnoringSafeArea: Edge.Set = .all,
         content: @escaping () -> Content) {
        self.devices = devices
        self.edgesIgnoringSafeArea = edgesIgnoringSafeArea
        self.content = content
    }
    
    var body: some View {
        ForEach(devices, id: \.self) { device in
            ColorSchemePreview {
                content()
                    .ignoresSafeArea(edges: edgesIgnoringSafeArea)
                    .previewDevice(.init(rawValue: device.rawValue))
                    .previewDisplayName(device.rawValue)
            }
        }
    }
}

extension ScreenPreview {
    enum PreviewDevice: String {
        case iPhoneSE1 = "iPhone SE (1st generation)"
        case iPhoneSE3 = "iPhone SE (3st generation)"
        case iPhone13ProMax = "iPhone 13 Pro Max"
    }
}

struct ColorSchemePreview<Content>: View where Content: View {
    let content: () -> Content
    
    private let colorSchemes: [ColorScheme] = [.light, .dark]
    
    var body: some View {
        ForEach(colorSchemes, id: \.self) { colorScheme in
            content()
                .preferredColorScheme(colorScheme)
        }
    }
}
