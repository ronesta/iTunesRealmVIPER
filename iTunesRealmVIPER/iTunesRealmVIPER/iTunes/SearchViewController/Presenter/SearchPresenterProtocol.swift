//
//  SearchPresenterProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

protocol SearchPresenterProtocol: AnyObject {
    func viewDidLoad(with term: String)

    func didFetchAlbums(_ albums: [RealmAlbum])

    func didFailToFetchAlbums(_ error: String)

    func getImageData(for imageId: Int) -> Data?

    func didSelectAlbum(_ album: RealmAlbum)
}
