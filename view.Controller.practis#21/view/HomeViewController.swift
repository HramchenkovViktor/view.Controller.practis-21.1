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
        navigationItem.title = "Home"
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
        
        let settingsButton = UIBarButtonItem(image: UIImage(systemName: "gear"), style: .plain, target: self, action: #selector(settingsButtonTapped))
        
        navigationItem.rightBarButtonItem = settingsButton
        
        let profileButton = UIBarButtonItem(title: "Profile", style: .plain, target: self, action: #selector(profileButtonTapped))
        navigationItem.leftBarButtonItem = profileButton
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
    @objc private func settingsButtonTapped() {
        print("Settings нажата")
    }
    @objc private func profileButtonTapped() {
        print("Profile нажата")
    }
}



