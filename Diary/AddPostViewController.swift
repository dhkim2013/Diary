//
//  AddPostViewController.swift
//  Diary
//
//  Created by almond on 2017. 1. 4..
//  Copyright © 2017년 almond. All rights reserved.
//

import UIKit

class AddPostViewController: UIViewController {
    
    let cancelButtonItem = UIBarButtonItem(title: "취소", style: .plain, target: nil, action: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "글쓰기"
        
        self.cancelButtonItem.target = self
        self.cancelButtonItem.action = #selector(cancelButtonDidSelected)
        
        self.navigationItem.leftBarButtonItem = cancelButtonItem
    }
    
    func cancelButtonDidSelected() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
