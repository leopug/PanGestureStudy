//
//  ViewController.swift
//  PanGestureStudy
//
//  Created by Leonardo Maia Pugliese on 10/05/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let tealCardView = UIView()
        tealCardView.backgroundColor = .systemTeal
        tealCardView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
        
        view.addSubview(tealCardView)
        
        tealCardView.center = view.center
        
        tealCardView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleCardTapped)))
        
    }


}

extension ViewController {
    @objc private func handleCardTapped(_ gesture: UIPanGestureRecognizer) {
        print("lalal")
    }
}

