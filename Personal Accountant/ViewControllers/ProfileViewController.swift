//
//  ProfileViewController.swift
//  Personal Accountant
//
//  Created by Алексей on 24.08.2022.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private var navigationBar: UINavigationController = {
       let navigationController = UINavigationController()
        navigationController.title = "Welcome, user"
        return navigationController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.backgroundColor = .darkGray
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(didTapAddTask)
        )
        navigationController?.navigationBar.tintColor = .white
    }
    
    @objc private func didTapAddTask() {
        print("Add")
    }
}
