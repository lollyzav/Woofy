//
//  HomeVC.swift
//  Woofy
//
//  Created by Ольга Максименко on 11.03.23.
//

import UIKit

class HomeVC: UIViewController {
    
    @IBOutlet weak var catalogCollectionView: UICollectionView!
    @IBOutlet weak var newsCollectionView: UICollectionView!
    
    
    var catalogs: [PetCatalog] = [
        .init(id: "id1", name: "Кошки"),
        .init(id: "id2", name: "Собаки"),
        .init(id: "id3", name: "Грызуны"),
        .init(id: "id4", name: "Птицы"),
        .init(id: "id5", name: "Рыбки")
    ]
    
    var news: [News] = [
        .init(id: "id1", brand: "RC Digestive Care", image: "https://zootovary.by/uploads/gcat/photo/215.1.jpg", cost: "60.98 руб."),
        .init(id: "id2", brand: "Versele-Laga Prestige Parrots", image: "https://zootovary.by/uploads/gcat/photo/704.1.jpg", cost: "25.65 руб."),
        .init(id: "id3", brand: "RC Yorkshire Terrier", image: "https://zootovary.by/uploads/gcat/photo/333.1.png", cost: "37.20 руб."),
        .init(id: "id4", brand: "Fiory Micropills Vet Care Obesity", image: "https://zootovary.by/uploads/gcat/photo/7860.1.png", cost: "49.36 руб."),
        .init(id: "id5", brand: "Gamma Дом Садовый для кошек ", image: "https://zootovary.by/uploads/gcat/photo/743.1.png", cost: "89.10 руб."),
        .init(id: "id6", brand: "Tetra Tablets TabiMin", image: "https://zootovary.by/uploads/gcat/photo/796.1.jpg", cost: "20.44 руб."),
        .init(id: "id7", brand: "Animonda Vom Feinsten Light Lunch Turkey & Ham", image: "https://zootovary.by/uploads/gcat/photo/4672.1.png", cost: "4.43 руб."),
        .init(id: "id8", brand: "Домик TRIXIE для грызунов", image: "https://zootovary.by/uploads/gcat/photo/1867.1.jpg", cost: "23.75 руб."),
        .init(id: "id9", brand: "Cats Best Original", image: "https://zootovary.by/uploads/gcat/photo/1514.1.png", cost: "23.93 руб."),
        .init(id: "id10", brand: "Super Benek Naturalny", image: "https://zootovary.by/uploads/gcat/photo/58.1.jpg", cost: "13.20 руб."),
        .init(id: "id11", brand: "TetraMin Pro Crisps", image: "https://zootovary.by/uploads/gcat/photo/783.1.jpg", cost: "13.94 руб.")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    private func registerCells() {
        catalogCollectionView.register(UINib(nibName: CatalogCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CatalogCollectionViewCell.identifier)
        
        newsCollectionView.register(UINib(nibName: NewsCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: NewsCollectionViewCell.identifier)
    }
    
}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            case catalogCollectionView:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CatalogCollectionViewCell.identifier, for: indexPath) as! CatalogCollectionViewCell
                cell.setup(catalog: catalogs[indexPath.row])
                return cell
                
            case newsCollectionView:
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCollectionViewCell.identifier, for: indexPath) as! NewsCollectionViewCell
                cell.setup(news: news[indexPath.row])
                return cell
            default: return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
            case catalogCollectionView:
                return catalogs.count
            case newsCollectionView:
                return news.count
            default: return 0
        }
    }
}
