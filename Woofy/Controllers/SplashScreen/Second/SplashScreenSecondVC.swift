//
//  SplashScreenSecondVC.swift
//  Woofy
//
//  Created by Ольга Максименко on 08.03.23.
//

import UIKit

class SplashScreenSecondVC: UIViewController {
    
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
        let lastVC = SplashScreenThirdVC (nibName: String (describing: SplashScreenThirdVC.self), bundle: nil)

        navigationController?.pushViewController (lastVC, animated: true)
    }

}
