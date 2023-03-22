//
//  CatalogCollectionViewCell.swift
//  Woofy
//
//  Created by Ольга Максименко on 19.03.23.
//

import UIKit

class CatalogCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CatalogCollectionViewCell.self)
    
    @IBOutlet weak var catalogLabel: UILabel!
    
    func setup(catalog: PetCatalog) {
        catalogLabel.text = catalog.name
    }
}
