//
//  AlbumPresenter.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

final class AlbumPresenter: AlbumPresenterProtocol {
    weak var view: AlbumViewProtocol?
    private let interactor: AlbumInteractorProtocol
    private let router: AlbumRouterProtocol
    private let album: RealmAlbum

    init(view: AlbumViewProtocol?,
         interactor: AlbumInteractorProtocol,
         router: AlbumRouterProtocol,
         album: RealmAlbum
    ) {
        self.view = view
        self.interactor = interactor
        self.router = router
        self.album = album
    }

    func viewDidLoad() {
        interactor.loadAlbumDetails(for: album)
    }

    func didFetchAlbumDetails(album: RealmAlbum, image: UIImage) {
        view?.displayAlbumDetails(album: album, image: image)
    }
}
