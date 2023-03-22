//
//  CardView.swift
//  Woofy
//
//  Created by Ольга Максименко on 21.03.23.
//

import UIKit

class CardView: UIView {
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    private func initialSetup() {
        layer.backgroundColor = UIColor.white.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 16
        layer.shadowOpacity = 0.1
    }
}
