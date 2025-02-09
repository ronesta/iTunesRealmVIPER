//
//  AlbumRouter.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class AlbumRouter: AlbumRouterProtocol {
    static func createModule(with album: RealmAlbum) -> UIViewController {
        let storageManager = StorageManager()

        let view = AlbumViewController()
        let interactor = AlbumInteractor()
        let router = AlbumRouter()
        let presenter = AlbumPresenter(interactor: interactor,
                                       router: router,
                                       album: album
        )

        view.presenter = presenter
        presenter.view = view

        interactor.presenter = presenter
        interactor.storageManager = storageManager

        return view
    }
}
