//
//  BookData.swift
//  ViewData
//
//  Created by Tars on 7/27/18.
//  Copyright © 2018 sspog. All rights reserved.
//

import Foundation
import UIKit

//사용할 Book데이터를 클래스로 정의.

class Book {
    var title:String
    var writer:String
    var coverImage:UIImage?

    init(title:String, writer:String, coverImage:UIImage?) {
        self.title = title
        self.writer = writer
        self.coverImage = coverImage
    }
}
