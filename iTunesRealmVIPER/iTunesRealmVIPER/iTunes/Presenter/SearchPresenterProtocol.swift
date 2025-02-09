//
//  SearchPresenterProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation
import UIKit

protocol SearchPresenterProtocol: AnyObject {
    func searchAlbums(with searchTerm: String)
    func didFetchAlbums(_ albums: [RealmAlbum])
    func didFailToFetchAlbums(_ error: String)
    func didSelectAlbum(_ album: RealmAlbum)
}
