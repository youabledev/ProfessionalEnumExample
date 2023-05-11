//
//  CustomCells.swift
//  ProfessionalEnum
//
//  Created by youabledev on 2023/05/11.
//

import UIKit

class LeftLowTableViewCell: UITableViewCell {
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attachUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func attachUI() {
        let boxView = UIView(frame: .init(x: 0, y: 0, width: 200, height: 200))
        contentView.addSubview(boxView)
        boxView.backgroundColor = .red
    }
}

class LeftHighTableViewCell: UITableViewCell {
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attachUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func attachUI() {
        let boxView = UIView(frame: .init(x: 0, y: 0, width: 200, height: 200))
        contentView.addSubview(boxView)
        boxView.backgroundColor = .red
    }
}


class MiddleLowTableViewCell: UITableViewCell {
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attachUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func attachUI() {
        let boxView = UIView(frame: .zero)
        boxView.center = contentView.center
        boxView.frame = .init(x: boxView.frame.origin.x, y: 0, width: 200, height: 200)
        contentView.addSubview(boxView)
        boxView.backgroundColor = .red
    }
}


class MiddleHighTableViewCell: UITableViewCell {
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attachUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func attachUI() {
        let boxView = UIView(frame: .zero)
        boxView.center = contentView.center
        boxView.frame = .init(x: boxView.frame.origin.x, y: 0, width: 200, height: 200)
        contentView.addSubview(boxView)
        boxView.backgroundColor = .red
    }
}


class RightLowTableViewCell: UITableViewCell {
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attachUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func attachUI() {
        let boxView = UIView(frame: .init(x: contentView.frame.size.width - 200, y: 0, width: 200, height: 200))
        contentView.addSubview(boxView)
        boxView.backgroundColor = .red
    }
}


class RightHeighTableViewCell: UITableViewCell {
    // MARK: - Initializer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        attachUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - UI
    private func attachUI() {
        let boxView = UIView(frame: .init(x: contentView.frame.size.width - 200, y: 0, width: 200, height: 200))
        contentView.addSubview(boxView)
        boxView.backgroundColor = .red
    }
}
