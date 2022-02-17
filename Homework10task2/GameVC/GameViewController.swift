//
//  GameViewController.swift
//  Homework10task2
//
//  Created by S2 on 17.02.22.
//

import UIKit

class GameViewController: UIViewController {
    
    private var onButtonUp: UIButton!
    private var onButtonDown: UIButton!
    private var onButtonLeft: UIButton!
    private var onButtonRight: UIButton!
    private var customCircle: UIView!
    private let value: CGFloat = 30
    private let sizeConst: CGFloat = 100
    private let width = UIScreen.main.bounds.width
    private let height = UIScreen.main.bounds.height
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        onButtonUp = UIButton(frame: CGRect(x: 160, y: 650 + sizeConst, width: 100, height: 50))
//        onButtonUp.setTitle("UP", for: .normal)
//        onButtonUp.backgroundColor = .systemIndigo
//        onButtonUp.addTarget(self, action: #selector(up), for: .touchUpInside)
//        view.addSubview(onButtonUp)
//
//        onButtonDown = UIButton()
//        onButtonDown.frame = onButtonUp.frame.offsetBy(dx: 0, dy: 60)
//        onButtonDown.setTitle("Down", for: .normal)
//        onButtonDown.backgroundColor = .systemIndigo
//        onButtonDown.addTarget(self, action: #selector(down), for: .touchUpInside)
//        view.addSubview(onButtonDown)
//
//        onButtonLeft = UIButton()
//        onButtonLeft.frame = onButtonDown.frame.offsetBy(dx: -110, dy: 0)
//        onButtonLeft.setTitle("Left", for: .normal)
//        onButtonLeft.backgroundColor = .systemIndigo
//        onButtonLeft.addTarget(self, action: #selector(left), for: .touchUpInside)
//        view.addSubview(onButtonLeft)
//
//        onButtonRight = UIButton()
//        onButtonRight.frame = onButtonDown.frame.offsetBy(dx: 110, dy: 0)
//        onButtonRight.setTitle("Right", for: .normal)
//        onButtonRight.backgroundColor = .systemIndigo
//        onButtonRight.addTarget(self, action: #selector(right), for: .touchUpInside)
//        view.addSubview(onButtonRight)
        
        customCircle = UIView()
        customCircle.frame = CGRect(x: width / 2 - 50, y: height / 2 - 100, width: sizeConst, height: sizeConst)
        customCircle.backgroundColor = .orange
        customCircle.layer.cornerRadius = 50
        view.addSubview(customCircle)
        
        
        tapsRecognizers()
    }
    
    // MARK: - private func
    // MARK: -

    @objc func up() {
        if customCircle.frame.origin.y.isLessThanOrEqualTo(50) {
            customCircle.frame = CGRect(x: width / 2 - 50, y: height / 2 - 100, width: sizeConst, height: sizeConst)
        } else {
            customCircle.frame.origin.y -= value
        }
    }
    
    @objc func down() {
        if customCircle.frame.origin.y.isLessThanOrEqualTo(height - 100) {
            customCircle.frame.origin.y += value
        } else {
            customCircle.frame = CGRect(x: width / 2 - 50, y: height / 2 - 100, width: sizeConst, height: sizeConst)
        }
    }
    
    @objc func left() {
        if customCircle.frame.origin.x.isLessThanOrEqualTo(0) {
            customCircle.frame = CGRect(x: width / 2 - 50, y: height / 2 - 100, width: sizeConst, height: sizeConst)
        } else {
            customCircle.frame.origin.x -= value
        }
    }
    
    @objc func right() {
        if customCircle.frame.origin.x.isLessThanOrEqualTo(width - 100) {
            customCircle.frame.origin.x += value
        } else {
            customCircle.frame = CGRect(x: width / 2 - 50, y: height / 2 - 100, width: sizeConst, height: sizeConst)
        }
    }
    
    private func tapsRecognizers(){
        let tapRecognizerUp = UISwipeGestureRecognizer(target: self, action: #selector(up))
        tapRecognizerUp.direction = .up
        view.addGestureRecognizer(tapRecognizerUp)
        
        let tapRecognizerDown = UISwipeGestureRecognizer(target: self, action: #selector(down))
        tapRecognizerDown.direction = .down
        view.addGestureRecognizer(tapRecognizerDown)
        
        let tapRecognizerLeft = UISwipeGestureRecognizer(target: self, action: #selector(left))
        tapRecognizerLeft.direction = .left
        view.addGestureRecognizer(tapRecognizerLeft)
        
        let tapRecognizerRight = UISwipeGestureRecognizer(target: self, action: #selector(right))
        tapRecognizerRight.direction = .right
        view.addGestureRecognizer(tapRecognizerRight)
    }
}
