//
//  SearchPresenter.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

final class SearchPresenter: SearchPresenterProtocol {
    weak var view: SearchViewProtocol?
    private let interactor: SearchInteractorProtocol
    private let router: SearchRouterProtocol

    init(view: SearchViewProtocol?,
         interactor: SearchInteractorProtocol,
         router: SearchRouterProtocol
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }

    func viewDidLoad(with term: String) {
        searchAlbums(with: term)
    }

    func searchAlbums(with searchTerm: String) {
        interactor.searchAlbums(with: searchTerm)
    }

    func didFetchAlbums(_ albums: [RealmAlbum]) {
        view?.updateAlbums(albums)
    }

    func didFailToFetchAlbums(_ error: String) {
        view?.showError(error)
    }

    func getImageData(for imageId: Int) -> Data? {
        interactor.fetchImageData(for: imageId)
    }

    func didSelectAlbum(_ album: RealmAlbum) {
        router.navigateToAlbumDetails(with: album)
    }
}
