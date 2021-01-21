//
//  GestureView.swift
//  GesturesApp
//
//  Created by Юлия on 20.01.2021.
//

import UIKit

protocol GestureDelegate: class {
    func didTap(_ view: GestureView)
}

class GestureView: UIView {
    
    weak var delegate: GestureDelegate?
    
    @objc func didTap() {
        delegate?.didTap(self)
    }

}
