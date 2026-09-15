//
//  CatalogViewController.swift
//  view.Controller.practis#21
//
//  Created by Виктор on 15.09.2026.
//

import UIKit
import SnapKit

class CatalogViewController: UIViewController {

    private let ProductButton = UIButton()
    private let backButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        view.addSubview(ProductButton)
        view.addSubview(backButton)
        
        ProductButton.setTitle("Product", for: .normal)
        ProductButton.setTitleColor(.white, for: .normal)
        ProductButton.backgroundColor = .systemBlue
        ProductButton.layer.cornerRadius = 15
        ProductButton.addTarget(self, action: #selector(ProductButtonTapped), for: .touchUpInside)
        
        backButton.setTitle("Назад", for: .normal)
        backButton.setTitleColor(.white, for: .normal)
        backButton.backgroundColor = .systemBlue
        backButton.layer.cornerRadius = 15
        backButton.addTarget(self, action: #selector(backButtonTapped), for: .touchUpInside)
        
    }
    
    func setupConstraints() {
        ProductButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            $0.leading.equalTo(100)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
        backButton.snp.makeConstraints {
            $0.top.equalTo(ProductButton.snp.bottom).offset(25)
            $0.leading.equalTo(100)
            $0.width.equalTo(100)
            $0.height.equalTo(50)
        }
    }
    @objc private func ProductButtonTapped() {
        let productViewController = ProductViewController()
        navigationController?.pushViewController(productViewController, animated: true)
    }
    @objc private func backButtonTapped() {
        navigationController?.popViewController(animated: true)
    }


}
