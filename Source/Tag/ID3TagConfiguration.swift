//
//  ID3TagConfiguration.swift
//
//  Created by Fabrizio Duroni on 20/02/2018.
//  2018 Fabrizio Duroni.
//

import Foundation

class ID3TagConfiguration {
    private let headers: [ID3Version : [UInt8]] = [
        .version2 : [0x49, 0x44, 0x33, 0x02, 0x00, 0x00],
        .version3 : [0x49, 0x44, 0x33, 0x03, 0x00, 0x00]
    ]
    private let tagHeaderSizeInBytes = 10

    func headerSize() -> Int {
        return tagHeaderSizeInBytes
    }

    func headerFor(version: ID3Version) -> [UInt8] {
        return headers[version]!
    }
}
