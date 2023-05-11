//
//  ViewController.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit
import Combine

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Example CustomColorType
        view.backgroundColor = CustomColorType.black.color
        
        /// Example CustomFontType
        let label = UILabel()
        label.font = CustomFontType.regular.font(size: 16)
        
        
        /// codable, string data type
        // as-is
        let originBadgeLable = UILabel()
        let processStatus = "3"
        if processStatus == "1" {
            originBadgeLable.backgroundColor = .blue
            originBadgeLable.textColor = .white
        } else if processStatus == "3" {
            originBadgeLable.backgroundColor = .blue
            originBadgeLable.textColor = .yellow
        } else if processStatus == "7" {
            originBadgeLable.backgroundColor = .yellow
            originBadgeLable.textColor = .gray
        } else if processStatus == "9" {
            originBadgeLable.backgroundColor = .red
            originBadgeLable.textColor = .white
        }
        
        // to-be
        let type: ProcessStatus = .processing
        let badgeLabel = UILabel()
        badgeLabel.backgroundColor = type.backgroundColor
        badgeLabel.textColor = type.titleColor
        badgeLabel.layer.masksToBounds = true
        badgeLabel.layer.cornerRadius = 2.0
        
    }


}

