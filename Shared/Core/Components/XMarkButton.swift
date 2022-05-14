//
//  XMarkButton.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/05/14.
//

import SwiftUI

struct XMarkButton: View {
    
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button(action: {
            dismiss.callAsFunction()
        }, label: {
            Image(systemName: "xmark")
                .font(.headline)
        })
    }
}

struct XMarkButton_Previews: PreviewProvider {
    static var previews: some View {
        XMarkButton()
            .padding()
            .previewLayout(.sizeThatFits)
    }
}
