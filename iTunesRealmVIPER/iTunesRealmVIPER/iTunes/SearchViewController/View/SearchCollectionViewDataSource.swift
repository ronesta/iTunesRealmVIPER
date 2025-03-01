//
//  SearchCollectionViewDataSource.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class SearchCollectionViewDataSource: NSObject, SearchDataSourceProtocol {
    private let presenter: SearchPresenterProtocol

    var albums = [RealmAlbum]()

    init(presenter: SearchPresenterProtocol) {
        self.presenter = presenter
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        albums.count
    }

    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: AlbumCollectionViewCell.id,
            for: indexPath)
                as? AlbumCollectionViewCell else {
            return UICollectionViewCell()
        }

        let album = albums[indexPath.item]

        guard let imageData = presenter.getImageData(for: Int(album.artistId)),
              let image = UIImage(data: imageData) else {
            return cell
        }

        cell.configure(with: album, image: image)
        return cell
    }
}
