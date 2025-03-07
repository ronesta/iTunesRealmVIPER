//
//  AlbumViewProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

protocol AlbumViewProtocol: AnyObject {
    func displayAlbumDetails(album: RealmAlbum, image: UIImage)
}
