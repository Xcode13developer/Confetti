//
//  ViewController.swift
//  Confetti
//
//  Created by Mohamad Mortada on 6/8/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let layer = CAEmitterLayer()
        layer.frame = CGRect(x: view.center.x / 2, y: 0, width: 50, height: 50)
        layer.emitterPosition = CGPoint(x: view.center.x / 2, y: 0)
        let colors: [UIColor] = [.systemRed, .systemOrange, .systemYellow, .systemGreen, .systemBlue, .systemPurple]
        
        let cells: [CAEmitterCell] = colors.compactMap {
            let cell = CAEmitterCell()
            cell.scale = 0.0125
            cell.birthRate = 100
            cell.color = $0.cgColor
            cell.emissionRange = .pi * 2
            cell.lifetime = 10
            cell.velocity = 150
            cell.contents = UIImage(named: "image")!.cgImage
            return cell
        }

        layer.emitterCells = cells
        view.layer.addSublayer(layer)
    }


}

