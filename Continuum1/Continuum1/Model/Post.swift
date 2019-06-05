//
//  Post.swift
//  Continuum1
//
//  Created by Austin West on 6/5/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit
import CloudKit


class Post {
    
    var photoData: Data?
    var timestamp: Date
    var caption: String
    var comments: [Comment]
    var photo: UIImage? {
        get {
            guard let photoData = photoData else { return nil }
            return UIImage(data: photoData)
        }
        set {
            photoData = newValue?.jpegData(compressionQuality: 0.5)
        }
        
    
        
        // Initializers
        init(photo: UIImage, comments: [Comment] = [], caption: String, timestamp: Date = Date()) {
        
        self.comments = comments
        self.caption = caption
        self.timestamp = timestamp
        self.photo = photo
        }
        
        
        
    }
}
