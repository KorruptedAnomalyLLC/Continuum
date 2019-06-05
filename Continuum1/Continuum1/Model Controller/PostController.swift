//
//  PostController.swift
//  Continuum1
//
//  Created by Austin West on 6/5/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import UIKit
import CloudKit

class PostController {
    
    static let shared = PostController()
    
    var posts: [Post] = []
    
    
    func addComment(text: String, post: Post, completion: @escaping (Comment?) -> Void) {
        
    }
    
    func createPostWith(image: UIImage, caption: String, completion: @escaping (Post?) -> Void) {
        let post = Post(photo: image, caption: caption)
        self.posts.append(post)
    }
}

