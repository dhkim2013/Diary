//
//  ViewController.swift
//  Diary
//
//  Created by almond on 2017. 1. 3..
//  Copyright © 2017년 almond. All rights reserved.
//

import UIKit

class DiaryListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var diarys: [Diary] = []
    
    let tableView = UITableView()
    let postButtonItem = UIBarButtonItem(title: "글쓰기", style: .plain, target: nil, action: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.tableView)
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "diary")
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.postButtonItem.target = self
        self.postButtonItem.action = #selector(postButtonItemDidSelected)
        
        self.navigationItem.rightBarButtonItem = self.postButtonItem
        
        self.title = "Diary"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.tableView.frame = self.view.bounds
    }
    
    func postButtonItemDidSelected() {
        let addPostViewController = AddPostViewController()
        let navigationController = UINavigationController(rootViewController: addPostViewController)
        
        self.present(navigationController, animated: true, completion: nil)
    }
    
    func loadDiarys() {
        guard let dicts = UserDefaults.standard.array(forKey: "diarys") as? [[String: Any]] else { return }
        
        print(dicts.flatMap { dict -> Diary? in
            return Diary(dictionary: dict)
        })
        self.tableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.diarys.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "diary", for: indexPath)
        let diary = self.diarys[indexPath.row]
        
        cell.textLabel?.text = diary.date
        
        return cell
    }
    
}

