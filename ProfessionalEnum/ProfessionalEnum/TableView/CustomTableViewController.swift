//
//  CustomTableViewController.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

class CustomTableViewController: UIViewController {
    
    let cellTypes: [CellType] = [.leftLow, .middleLow, .rightHigh, .leftHigh, .middleHigh]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let tableView = UITableView(frame: view.frame)
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)
        
        // register
        cellTypes.forEach { cellType in
            tableView.register(cellType.cellClass, forCellReuseIdentifier: cellType.rawValue)
        }
    }
}

extension CustomTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTypes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = cellTypes[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: type.rawValue, for: indexPath)
        cell.backgroundColor = type.background
        
        // celltypes 어레이 요소의 순서를 바꾸어도 아래 코드를 수정 할 필요 없음
        switch type {
        case .leftLow:
            print("🌐\(#file.split(separator: "/").last!)-\(#function)[\(#line)]")
        case .leftHigh:
            print("🌐\(#file.split(separator: "/").last!)-\(#function)[\(#line)]")
        case .middleLow:
            print("🌐\(#file.split(separator: "/").last!)-\(#function)[\(#line)]")
        case .middleHigh:
            print("🌐\(#file.split(separator: "/").last!)-\(#function)[\(#line)]")
        case .rightLow:
            print("🌐\(#file.split(separator: "/").last!)-\(#function)[\(#line)]")
        case .rightHigh:
            print("🌐\(#file.split(separator: "/").last!)-\(#function)[\(#line)]")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return cellTypes[indexPath.row].cellHeight
    }
}
