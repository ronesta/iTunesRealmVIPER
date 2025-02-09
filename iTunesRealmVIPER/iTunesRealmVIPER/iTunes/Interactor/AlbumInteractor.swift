//
//  AlbumInteractor.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class AlbumInteractor: AlbumInteractorProtocol {
    var presenter: AlbumPresenterProtocol!
    var storageManager: StorageManagerProtocol!

    func loadAlbumDetails(for album: RealmAlbum) {
        guard let imageData = storageManager.fetchImageData(forImageId: Int(album.artistId)),
              let image = UIImage(data: imageData) else {
            return
        }

        presenter.didFetchAlbumDetails(album: album, image: image)
    }
}
