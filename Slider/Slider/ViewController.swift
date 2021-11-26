//
//  ViewController.swift
//  Slider
//
//  Created by C94280a on 26/11/21.
//

import UIKit

class ViewController: UIViewController {

    lazy var slider: UISlider = {
        let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.value = 0.0
        slider.tintColor = UIColor(red: 0.89, green: 0.87, blue: 1.00, alpha: 1.00)
        slider.addTarget(self, action: #selector(actionSlider(_:)), for: .allEvents)
        // touchUpInside -> pega apenas o valor quando parar o slider em alguma posição
        // allEvents -> pega todos os valores, enquanto vai alterando o slider
        return slider
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    @objc func actionSlider(_ sender: UISlider) {
        print(sender.value)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .white
        self.view.addSubview(slider)
        setupConstraints()
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
        
            self.slider.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            self.slider.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            self.slider.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            self.slider.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20)
            
        ])
    }

}
