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
    let titleField = UITextField()
    let contentField = UITextView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        self.title = "글쓰기"
        
        self.view.addSubview(titleField)
        self.view.addSubview(contentField)
        
        self.titleField.borderStyle = UITextBorderStyle.roundedRect
        
        self.cancelButtonItem.target = self
        self.cancelButtonItem.action = #selector(cancelButtonDidSelected)
        
        self.navigationItem.leftBarButtonItem = cancelButtonItem
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.titleField.frame = CGRect(
            x: 10,
            y: 70,
            width: self.view.frame.size.width - 20,
            height: 44
        )
        
        self.contentField.frame = CGRect(
            x: 10,
            y: 124,
            width: self.view.frame.size.width - 20,
            height: 100
        )
    }
    
    func cancelButtonDidSelected() {
        self.dismiss(animated: true, completion: nil)
    }
    
}
