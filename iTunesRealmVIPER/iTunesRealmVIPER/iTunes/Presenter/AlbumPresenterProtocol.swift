//
//  AlbumPresenterProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

protocol AlbumPresenterProtocol: AnyObject {
    func loadAlbumDetails()
    func didFetchAlbumDetails(album: RealmAlbum, image: UIImage)
}
