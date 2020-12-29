//
//  PHBaseModel.swift
//  PHBaseMoudle
//
//  Created by bono on 2020/12/8.
//

import UIKit

open class PHBaseTableViewCell: UITableViewCell {
    public static func cell(with tableView: UITableView) -> PHBaseTableViewCell {
        let cellIdentifier = NSStringFromClass(Self.self)
        var cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
        if cell == nil {
            let cls = Self.self as UITableViewCell.Type
            cell = cls.init(style: UITableViewCellStyle.default, reuseIdentifier: cellIdentifier)
        }
        return cell as! Self
    }
}
