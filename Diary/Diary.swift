//
//  Diary.swift
//  Diary
//
//  Created by almond on 2017. 1. 4..
//  Copyright © 2017년 almond. All rights reserved.
//

struct Diary {
    var date: String
    var title: String
    var content: String
    
    init?(dictionary: [String: Any]) {
        guard let date = dictionary["date"] as? String,
            let title = dictionary["title"] as? String,
            let content = dictionary["content"] as? String
            else { return nil }
        
        self.date = date
        self.title = title
        self.content = content
    }
}
