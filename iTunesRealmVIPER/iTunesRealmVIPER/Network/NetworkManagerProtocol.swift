//
//  NetworkManagerProtocol.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 09.02.2025.
//

import Foundation

protocol NetworkManagerProtocol: AnyObject {
    func loadAlbums(albumName: String, completion: @escaping ([Album]?, Error?) -> Void)

    func loadImage(from urlString: String, completion: @escaping (Data?, Error?) -> Void)
}
