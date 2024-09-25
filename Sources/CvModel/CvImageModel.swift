//
//  CvImageModel.swift
//  CvModel
//
//  Created by Antonio Montes on 4/4/21.
//  Copyright © 2021 Antonio Montes. All rights reserved.
//

import Foundation
import SerializedSwift

@objcMembers public class CvImageModel: NSObject, Serializable {

    @Serialized("icon_url")
    public var iconURL: String?
    @Serialized("medium_url")
    public var mediumURL: String?
    @Serialized("screen_url")
    public var screenURL: String?
    @Serialized("screen_large_url")
    public var screenLargeURL: String?
    @Serialized("small_url")
    public var smallURL: String?
    @Serialized("super_url")
    public var superURL: String?
    @Serialized("thumb_url")
    public var thumbURL: String?
    @Serialized("tiny_url")
    public var tinyURL: String?
    @Serialized("original_url")
    public var originalURL: String?
    @Serialized("image_tags")
    public var imageTags: String?

    required public override init() {}
}
