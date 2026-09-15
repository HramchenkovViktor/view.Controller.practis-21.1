//
//  ProductViewController.swift
//  view.Controller.practis#21
//
//  Created by Виктор on 15.09.2026.
//

import UIKit
import SnapKit

class ProductViewController: UIViewController {
    
    private let CartButton = UIButton()
    private let backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(CartButton)
        view.addSubview(backButton)
        
        CartButton.setTitle("Что-то", for: .normal)
        CartButton.setTitleColor(.white, for: .normal)
        CartButton.backgroundColor = .systemBlue
        CartButton.layer.cornerRadius = 15
        CartButton.addTarget(self, action: #selector(CardButtonTapped), for: .touchUpInside)
        
        backButton.setTitle("Назад", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .systemBlue
        backButton.layer.cornerRadius = 15
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
    }
    
    func setupConstraints() {
        CartButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            $0.leading.equalTo(100)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
        backButton.snp.makeConstraints {
            $0.top.equalTo(CartButton.snp.bottom).offset(25)
            $0.leading.equalTo(100)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
        
    }
    @objc private func CardButtonTapped() {
        let cartViewController = CartViewController()
        navigationController?.pushViewController(cartViewController, animated: true)
    }

    
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }
    


}
