//
//  SplashScreenThirdVC.swift
//  Woofy
//
//  Created by Ольга Максименко on 09.03.23.
//

import UIKit

class SplashScreenThirdVC: UIViewController {
    
    @IBOutlet weak var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRadiusButton()
    }

    func makeRadiusButton() {
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        let lastVC = storyBoard.instantiateViewController(withIdentifier: "TabBar") as! UITabBarController
        
        lastVC.modalPresentationStyle = .fullScreen
        
        self.present(lastVC, animated: true, completion: nil)
        
//        let lastVC = HomeVC (nibName: String (describing: HomeVC.self), bundle: nil)
//
//        navigationController?.pushViewController (lastVC, animated: true)
    }

}
