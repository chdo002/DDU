//
//  Base.swift
//  SwiftDemo
//
//  Created by 陈栋 on 2021/12/26.
//

import UIKit

// base

class BaseTableCellVM: ItemVM { var itemType : UITableViewCell.Type { UITableViewCell.self } }
class BaseCollectionCellVM: ItemVM { var itemType: UICollectionViewCell.Type { UICollectionViewCell.self} }

class MyTableCell: UITableViewCell { }
class MyTableCellAVM: BaseTableCellVM {
    override var itemType: UITableViewCell.Type { MyTableCell.self }
}

class BaseTableSectionVM: SectionVM {
    var datas: [BaseTableCellVM] = []
    func asdf() {
        datas.append(MyTableCellAVM())
    }
}

class BaseTableVM: TableVM {
    var datas: [BaseTableSectionVM] = []
}

//@resultBuilder struct My<T> {
//
//    static func buildBlock(_ components: T...) -> T {
//        Never
//    }
//
//}
