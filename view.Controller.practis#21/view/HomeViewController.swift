//
//  ViewController.swift
//  view.Controller.practis#21
//
//  Created by Виктор on 15.09.2026.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    private let CatalogButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    
    func setupUI() {
        view.backgroundColor = .systemBackground
        view.addSubview(CatalogButton)
        CatalogButton.setTitle("Catalog", for: .normal)
        CatalogButton.setTitleColor(.black, for: .normal)
        CatalogButton.backgroundColor = .systemBlue
        CatalogButton.layer.cornerRadius = 15
        CatalogButton.addTarget(self, action: #selector(CatalogButtonTupped), for: .touchUpInside)
        
    }
    
    func setupConstraints() {
        CatalogButton.snp.makeConstraints {
            $0.top.equalTo(view.safeAreaLayoutGuide).offset(100)
            $0.leading.equalTo(100)
            $0.width.equalTo(200)
            $0.height.equalTo(50)
        }
    }
    @objc private func CatalogButtonTupped() {
        let catalogController = CatalogViewController()
        navigationController?.pushViewController(catalogController, animated: true)
    }
}



