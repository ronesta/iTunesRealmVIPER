//
//  AlbumPresenterProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

protocol AlbumPresenterProtocol: AnyObject {
    func viewDidLoad()

    func didFetchAlbumDetails(album: RealmAlbum, image: UIImage)
}
