//
//  MyTableViewController.swift
//  StretchyHeaderTutorial
//
//  Created by 김재훈 on 2022/04/11.
//

import UIKit

class MyTableViewController: UITableViewController {
    
    var imageView: UIImageView? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        tableView.contentInset = UIEdgeInsets(top: 300, left: 0, bottom: 0, right: 0)
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "Lorem Ipsum \(indexPath.row)"
        return cell
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let y = -scrollView.contentOffset.y
        let height = max(y, 60)
        imageView?.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: height)
    }
}
