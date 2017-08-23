//
//  ViewController.swift
//  extensions
//
//  Created by Wesley on 8/21/17.
//  Copyright © 2017 Wesley. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView!
    
    private var cellItems: [[String: String]] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Extensions"
        // Do any additional setup after loading the view, typically from a nib.
        
        if tableView == nil {
            tableView = UITableView(frame: self.view.bounds, style: UITableViewStyle.plain)
            tableView.delegate = self
            tableView.dataSource = self
            self.view.addSubview(tableView)
        }
        
        self.loadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadData() {
        cellItems = [
            ["title": "View Border", "key": "border"],
            ["title": "String", "key": "string"],
            ["title": "Button", "key": "button"]
        ]
        tableView.reloadData()
    }
    
    func showDetail(key: String?) {
        switch key ?? "" {
        case "border":
            let vc = BorderViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case "string":
            let vc = StringViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        case "button":
            let vc = ButtonViewController()
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }

    // MARK: UITableViewDelegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let cellItem = cellItems[indexPath.row]
        
        cell.textLabel?.text = cellItem["title"]
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let cellItem = cellItems[indexPath.row]
        self.showDetail(key: cellItem["key"])
    }
    
}

