//
//  ViewController.swift
//  GesturesApp
//
//  Created by Юлия on 20.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var gestureView: GestureView! {
        didSet{
            gestureView.delegate = self
        }
    }
}

extension ViewController: GestureDelegate {
    
    func didTap(_ view: GestureView) {
        print("delegate didTap")
    }
}


