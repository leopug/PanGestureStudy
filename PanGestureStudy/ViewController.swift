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

        addCards()
    }
}

extension ViewController {
    private func addCards() {
        
        for cardNumber in 0...3 {
            let tealCardView = UIView()
            tealCardView.backgroundColor = cardNumber == 2 ? .systemTeal : .systemRed
            tealCardView.frame = CGRect(x: 0, y: 0, width: 200, height: 300)
            
            view.addSubview(tealCardView)
            
            tealCardView.center = view.center
            
            tealCardView.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(handleCardTapped)))
        }
        

    }
}

extension ViewController {
    @objc private func handleCardTapped(_ gesture: UIPanGestureRecognizer) {
        if let cardView = gesture.view {
            let point = gesture.translation(in: view)

            cardView.center = CGPoint(x: view.center.x + point.x, y: view.center.y + point.y)
            
            let rotationAngle = point.x / view.bounds.width
            
            print(rotationAngle,point.x,view.bounds.width)
            
            cardView.transform = CGAffineTransform(rotationAngle: rotationAngle)
            
            if gesture.state == .ended {
                UIView.animate(withDuration: 0.3) {
                    cardView.center = self.view.center
                    cardView.transform = .identity
                }
            }
        }
    }
}

