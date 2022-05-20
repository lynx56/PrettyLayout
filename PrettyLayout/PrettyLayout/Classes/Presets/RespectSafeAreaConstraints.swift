//
//  RespectSafeAreaConstraints.swift
//  PrettyLayout
//
//  Created by Holyberry on 19.05.2022.
//

import Foundation

public enum RespectSafeAreaConstraints {
    
    public static var pin: [PairedConstraint] {
        [
            equal(\.topAnchor, \.safeAreaLayoutGuide.topAnchor),
            equal(\.leadingAnchor),
            equal(\.trailingAnchor),
            equal(\.bottomAnchor, \.safeAreaLayoutGuide.bottomAnchor)
        ]
    }
    
    public static func with(insets: UIEdgeInsets) -> [PairedConstraint] {
        [
            equal(\.topAnchor, \.safeAreaLayoutGuide.topAnchor, constant: insets.top),
            equal(\.leadingAnchor, constant: insets.left),
            equal(\.trailingAnchor, constant: -insets.right),
            equal(\.bottomAnchor, \.safeAreaLayoutGuide.bottomAnchor, constant: -insets.bottom)
        ]
    }
    
}
