//
//  SplashScreenVC.swift
//  Woofy
//
//  Created by Ольга Максименко on 08.03.23.
//

import UIKit

class SplashScreenVC: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        makeRadiusButton()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }

    func makeRadiusButton() {
        button.layer.cornerRadius = 30
        button.clipsToBounds = true
    }
    
    @IBAction func buttonDidTap(_ sender: Any) {
        let lastVC = SplashScreenSecondVC (nibName: String (describing: SplashScreenSecondVC.self), bundle: nil)

        navigationController?.pushViewController (lastVC, animated: true)
    }
}
