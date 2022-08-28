//
//  CoinDetailDataService.swift
//  SwiftUICrypto (iOS)
//
//  Created by 金峻聖 on 2022/08/28.
//

import Foundation
import Combine

class CoinDetailDataService {
    
    @Published var coinDetails: CoinDetailModel? = nil
    
    var coinDetailSubscription: AnyCancellable?
    let coin: CoinModel
    
    init(coin: CoinModel) {
        self.coin = coin
        getCoinDetailss()
    }
    
    func getCoinDetailss() {
        guard let url = URL(string: "https://api.coingecko.com/api/v3/coins/\(coin.id)?tickers=false&market_data=false&community_data=false&developer_data=false&sparkline=false") else { return }
        
        coinDetailSubscription = NetworkingManager.download(url: url)
            .decode(type: CoinDetailModel.self, decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] returnedCoinDetails in
                self?.coinDetails = returnedCoinDetails
                self?.coinDetailSubscription?.cancel()
            })
    }
}
