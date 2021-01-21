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
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        let recognizer = UITapGestureRecognizer(target: self, action: #selector(GestureView.didTap))
        recognizer.numberOfTapsRequired = 2
        self.addGestureRecognizer(recognizer)
    }
    
    @objc func didTap() {
        delegate?.didTap(self)
    }

}
