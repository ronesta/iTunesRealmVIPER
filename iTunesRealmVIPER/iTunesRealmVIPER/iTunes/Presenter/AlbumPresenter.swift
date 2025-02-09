//
//  AlbumPresenter.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class AlbumPresenter: AlbumPresenterProtocol {
    weak var view: AlbumViewProtocol?
    private let interactor: AlbumInteractorProtocol?
    private let router: AlbumRouterProtocol?
    private let album: RealmAlbum

    init(interactor: AlbumInteractorProtocol?,
         router: AlbumRouterProtocol?,
         album: RealmAlbum
    ) {
        self.interactor = interactor
        self.router = router
        self.album = album
    }

    func loadAlbumDetails() {
        interactor?.loadAlbumDetails(for: album)
    }

    func didFetchAlbumDetails(album: RealmAlbum, image: UIImage) {
        view?.displayAlbumDetails(album: album, image: image)
    }
}
