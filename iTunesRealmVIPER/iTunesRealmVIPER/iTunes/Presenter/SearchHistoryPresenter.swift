//
//  SearchHistoryPresenter.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation

final class SearchHistoryPresenter: SearchHistoryPresenterProtocol {
    weak var view: SearchHistoryViewProtocol?
    private let interactor: SearchHistoryInteractorProtocol?
    private let router: SearchHistoryRouterProtocol?

    init(view: SearchHistoryViewProtocol?,
         interactor: SearchHistoryInteractorProtocol?,
         router: SearchHistoryRouterProtocol?
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func loadSearchHistory() {
        interactor?.loadSearchHistory()
    }

    func didFetchSearchHistory(_ history: [String]) {
        view?.updateSearchHistory(history)
    }
}
