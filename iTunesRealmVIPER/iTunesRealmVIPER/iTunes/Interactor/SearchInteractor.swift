//
//  SearchInteractor.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

final class SearchInteractor: SearchInteractorProtocol {
    var presenter: SearchPresenterProtocol!
    var networkManager: NetworkManagerProtocol!
    var storageManager: StorageManagerProtocol!

    func searchAlbums(with term: String) {
        let savedAlbums = storageManager.fetchAlbums(for: term)

        guard savedAlbums.isEmpty else {
            self.presenter?.didFetchAlbums(savedAlbums)
            return
        }

        networkManager.loadAlbums(albumName: term) { [weak self] result, error  in
            if let error {
                print("Error getting albums: \(error)")
                return
            }

            guard let result else {
                return
            }

            var albumsToSave: [(album: Album, imageData: Data)] = []
            let group = DispatchGroup()

            result.forEach { res in
                group.enter()
                self?.networkManager.loadImage(from: res.artworkUrl100) { data, error in
                    if let error {
                        print("Failed to load image: \(error)")
                        return
                    }

                    guard let data else {
                        print("No data for image")
                        return
                    }

                    albumsToSave.append((album: res, imageData: data))
                    group.leave()
                }
            }

            group.notify(queue: .main) { [weak self] in
                guard let self else {
                    return
                }

                storageManager.saveAlbums(albumsToSave, for: term)
                print("Successfully loaded \(albumsToSave.count) albums.")

                DispatchQueue.main.async {
                    let currentAlbums = self.storageManager.fetchAlbums(for: term)
                    self.presenter?.didFetchAlbums(currentAlbums)
                }
            }
        }
    }
}
