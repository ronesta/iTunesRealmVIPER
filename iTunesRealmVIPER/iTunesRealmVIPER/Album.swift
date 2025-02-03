//
//  PostAlbums.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 03.02.2025.
//

import Foundation

struct PostAlbums: Decodable {
    let results: [Album]
}

struct Album: Decodable {
    let artistId: Int
    let artistName: String
    let collectionName: String
    let artworkUrl100: String
    let collectionPrice: Double
}
