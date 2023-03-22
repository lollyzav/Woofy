//
//  String+Extensions.swift
//  Woofy
//
//  Created by Ольга Максименко on 22.03.23.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
