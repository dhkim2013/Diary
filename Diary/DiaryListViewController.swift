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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.tableView)
        
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "diary")
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
        self.title = "Diary"
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.tableView.frame = self.view.bounds
    }
    
    func loadDiarys() {
        
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

