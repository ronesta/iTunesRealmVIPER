//
//  AlbumRouterProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

protocol AlbumRouterProtocol: AnyObject {
    static func createModule(with album: RealmAlbum) -> UIViewController
}
