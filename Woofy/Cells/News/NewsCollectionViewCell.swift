//
//  NewsCollectionViewCell.swift
//  Woofy
//
//  Created by Ольга Максименко on 21.03.23.
//

import UIKit
import Kingfisher

class NewsCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "NewsCollectionViewCell"
    
    @IBOutlet weak var newsImageView: UIImageView!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var costLabel: UILabel!
    
    func setup(news: News) {
        newsImageView.kf.setImage(with: news.image?.asUrl)
        brandLabel.text = news.brand
        costLabel.text = news.cost
    }
    
}
