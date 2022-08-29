//
//  DetailViewModel.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/08/28.
//

import Foundation
import Combine

class DetailViewModel: ObservableObject {
    
    private let coinDetailServce: CoinDetailDataService
    private var cancelables = Set<AnyCancellable>()
    
    init(coin: CoinModel) {
        self.coinDetailServce = CoinDetailDataService(coin: coin)
        self.addSubscribers()
    }
    
    private func addSubscribers() {
        coinDetailServce.$coinDetails
            .sink { (returnedCoinDetails) in
                print("RECIEVED COIN DETAIL DATA")
                print(returnedCoinDetails)
            }
            .store(in: &cancelables)
    }
}
