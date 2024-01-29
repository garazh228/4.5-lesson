//
//  SecondViewController.swift
//  4.5 lesson
//
//  Created by adyl CEO on 29/01/2024.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource {
    
    var users: [Struct] = []
    private var cellID = "cell"
    
    
    
    let tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .singleLine
        tableView.rowHeight = 110
        return tableView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Notification"
        
        view.backgroundColor = .white
        
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.register(CustomViewController.self, forCellReuseIdentifier: "NotificationCell")
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20)
        ])
        setupData()
    }
    
    
    private func setupData() {
        users = [
            Struct(image: "1", rate: "Jane Cooper has published a new recipe!", discription: "Today | 09:22 AM", photo: "burgir"),
            Struct(image: "2", rate: "Rochel has commented on your recipe", discription: "5 day ago | 14:11 PM", photo: "taco"),
            Struct(image: "rock", rate: "Brad Wigington liked your comment", discription: "1 day ago | 17:18 PM", photo: "croasan"),
            Struct(image: "vin", rate: "Tyra Ballentine has published a new recipe!", discription: "2 day ago | 5.54 AM", photo: "pasta"),
            Struct(image: "tucker", rate: "Marci Winkles has published a new recipe!", discription: "4 days ago | 20:100 PM", photo: "cake"),
            Struct(image: "6", rate: "George has commented on your recipe", discription: "5 day ago | 11:11 PM", photo: "stake")
        ]
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NotificationCell", for: indexPath) as! CustomViewController
        
        cell.configure(with: users[indexPath.row])
        
        
        return cell
    }
    
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        
//        return 100
//    }

}
