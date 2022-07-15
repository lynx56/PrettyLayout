//
//  UIView+addSubview.swift
//  RSM41S
//
//  Created by Holyberry on 04.10.2020.
//

import UIKit

public typealias SingleConstraint = (UIView) -> NSLayoutConstraint
public typealias PairedConstraint = (UIView, UIView) -> NSLayoutConstraint

public extension UIView {
    
    func addSubview(_ child: UIView,
                    constraints: [PairedConstraint]) {
        child.translatesAutoresizingMaskIntoConstraints = false
        addSubview(child)
        NSLayoutConstraint.activate(constraints.map { $0(child, self) })
    }
    
    func addSubview(_ child: UIView,
                    constraints: [PairedConstraint],
                    singleConstraints: [SingleConstraint]) {
        child.translatesAutoresizingMaskIntoConstraints = false
        addSubview(child)
        let allConstraints = constraints.map { $0(child, self) } + singleConstraints.map { $0(child) }
        NSLayoutConstraint.activate(allConstraints)
    }
    
    func setConstraints(_ constraints: [SingleConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints.map { $0(self) })
    }
    
    func setConstraints(to pairView: UIView, constraints: [PairedConstraint]) {
        translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(constraints.map { $0(self, pairView) })
    }
}
