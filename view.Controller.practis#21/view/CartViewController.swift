//
//  CartViewController.swift
//  view.Controller.practis#21
//
//  Created by Виктор on 15.09.2026.
//

import UIKit
import SnapKit

class CartViewController: UIViewController {

    private let backHomeButton = UIButton()
    private let backButton = UIButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(backHomeButton)
        view.addSubview(backButton)
        
        
        backHomeButton.setTitle("BackHome", for: .normal)
        backHomeButton.setTitleColor(.white, for: .normal)
        backHomeButton.backgroundColor = .systemBlue
        backHomeButton.layer.cornerRadius = 15
        backHomeButton.addTarget(self, action: #selector(backHomeTapped), for: .touchUpInside)
        
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .systemBlue
        backButton.layer.cornerRadius = 15
        backButton.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
    }
    
    func setupConstraints() {
        backHomeButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            $0.leading.equalTo(100)
            $0.width.equalTo(200)
            $0.height.equalTo(50)
        }
        backButton.snp.makeConstraints {
            $0.top.equalTo(backHomeButton.snp.bottom).offset(25)
            $0.leading.equalTo(100)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
    }
    @objc private func backHomeTapped() {
        guard let navigationController = navigationController else { return }
        navigationController.popToRootViewController(animated: true)
    }
    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }
}
