//
//  Standard.swift
//  iOSDemo
//
//  Created by chendong on 2021/12/24.
//

import UIKit

protocol View {
    static func width(data:Any?) -> CGFloat
    static func height(data:Any?) -> CGFloat
    func update(data:Any?)
}

protocol ItemView: View { static var identifier: String { get } }

protocol ItemVM {
    associatedtype ViewType : ItemView
    var itemType: ViewType.Type { get }
}

protocol SectionVM {
    associatedtype ItemVMType : ItemVM
    var datas: [ItemVMType] { get set }
}

protocol TableVM where SectionVMType.ItemVMType.ViewType : UITableViewCell {
    associatedtype SectionVMType: SectionVM
    var datas: [SectionVMType] { get set }
}

// extension

extension ItemView { static var identifier: String { "\(self)_ID" } }

extension UITableViewCell : ItemView {
    
    static func width(data: Any?) -> CGFloat { 0 }
    
    static func height(data: Any?) -> CGFloat { UITableView.automaticDimension }
    
    func update(data: Any?) { }
}

extension UICollectionViewCell : ItemView {
    
    static func width(data: Any?) -> CGFloat { 0 }
    
    static func height(data: Any?) -> CGFloat { 0 }
    
    func update(data: Any?) { }
}
