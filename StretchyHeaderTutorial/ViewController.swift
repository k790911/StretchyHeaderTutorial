//
//  ViewController.swift
//  StretchyHeaderTutorial
//
//  Created by 김재훈 on 2022/04/11.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let myTable = MyTableViewController()
        self.addChild(myTable)
        
        view.addSubview(myTable.tableView)
        settingLayoutOfTableView(myTable)

        let imageView = UIImageView()
        imageView.image = UIImage(named: "Pheonix.jpeg")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.frame = CGRect(x: 0, y: 0, width: view.frame.width, height: 300)
        
        
        view.addSubview(imageView)
        //myTable.tableView.tableHeaderView = imageView
        //myTable.tableView.addSubview(imageView)
        
        myTable.imageView = imageView
    }


    func settingLayoutOfTableView(_ myTable: MyTableViewController) {
        NSLayoutConstraint.activate(
            [myTable.tableView.topAnchor.constraint(equalTo: view.topAnchor), myTable.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor), myTable.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor), myTable.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }
}

