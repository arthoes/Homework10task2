//
//  ViewController.swift
//  Homework10task2
//
//  Created by S2 on 17.02.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onGoToButton(_ sender: Any) {
        transitToGameVC()
    }
    
    private func transitToGameVC() {
        let storyboard = UIStoryboard(name: "GameViewController", bundle: Bundle.main)
        let vc = storyboard.instantiateInitialViewController() as! GameViewController
        
        navigationController?.pushViewController(vc, animated: true)
    }
}

