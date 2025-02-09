//
//  SearchPresenter.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class SearchPresenter: SearchPresenterProtocol {
    weak var view: SearchViewProtocol?
    private let interactor: SearchInteractorProtocol?
    private let router: SearchRouterProtocol?

    init(view: SearchViewProtocol?, interactor: SearchInteractorProtocol?, router: SearchRouterProtocol?) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func searchAlbums(with searchTerm: String) {
        interactor?.searchAlbums(with: searchTerm)
    }

    func didFetchAlbums(_ albums: [RealmAlbum]) {
        view?.updateAlbums(albums)
    }

    func didFailToFetchAlbums(_ error: String) {
        view?.showError(error)
    }

    func didSelectAlbum(_ album: RealmAlbum) {
        router?.navigateToAlbumDetails(with: album)
    }
}
