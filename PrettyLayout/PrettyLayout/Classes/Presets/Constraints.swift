//
//  Constraints.swift
//  PrettyLayout
//
//  Created by Holyberry on 19.05.2022.
//

import Foundation

public enum Constraints {
    
    public static var pin: [PairedConstraint] {
        [
            equal(\.leadingAnchor),
            equal(\.trailingAnchor),
            equal(\.bottomAnchor),
            equal(\.topAnchor)
        ]
    }
    
    public static var center: [PairedConstraint] {
        [
            equal(\.centerXAnchor),
            equal(\.centerYAnchor)
        ]
    }
    
    public static func with(insets: UIEdgeInsets) -> [PairedConstraint] {
        [
            equal(\.leadingAnchor, constant: insets.left),
            equal(\.trailingAnchor, constant: -insets.right),
            equal(\.bottomAnchor, constant: -insets.bottom),
            equal(\.topAnchor, constant: insets.top)
        ]
    }
    
    public static func fixedSize(size: CGSize) -> [SingleConstraint] {
        [
            equal(\.widthAnchor, constant: size.width),
            equal(\.heightAnchor, constant: size.height)
        ]
    }
    
    public static func with(top: CGFloat? = nil,
                            bottom: CGFloat? = nil,
                            left: CGFloat? = nil,
                            right: CGFloat? = nil) -> [PairedConstraint] {
        [
            top.map { equal(\.topAnchor, constant: $0) },
            bottom.map { equal(\.bottomAnchor, constant: -$0) },
            left.map { equal(\.leadingAnchor, constant: $0) },
            right.map { equal(\.trailingAnchor, constant: -$0) }
        ].compactMap { $0 }
    }
}
