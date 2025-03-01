//
//  SearchInteractorProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit.UIImage

protocol SearchInteractorProtocol: AnyObject {
    func searchAlbums(with term: String)

    func fetchImageData(for imageId: Int) -> Data?
}
