//
//  Comment.swift
//  Continuum1
//
//  Created by Austin West on 6/5/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation
import CloudKit

class Comment {
    
    var text: String
    var timestamp: Date
    weak var post: Post?
    
    
    
    init(text: String, timestamp: Date = Date(), post: Post) {
        self.text = text
        self.post = post
        self.timestamp = timestamp
    }
    
    
}
