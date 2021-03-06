//
//  ID3ComposerFrameCreator.swift
//
//  Created by Nolaine Crusher on 02/24/2020.
//  2020 Nolaine Crusher .
//
import Foundation

class ID3ComposerFrameCreator: ID3StringFrameCreator {
    override func createFrames(id3Tag: ID3Tag, tag: [UInt8]) -> [UInt8] {
        if let composerFrame = id3Tag.frames[.composer] as? ID3FrameWithStringContent {
            return createFrameUsing(
                frameType: .composer,
                content: composerFrame.content,
                id3Tag: id3Tag,
                andAddItTo: tag
            )
        }
        return super.createFrames(id3Tag: id3Tag, tag: tag)
    }
}
