//
//  ShoppingListViewController.swift
//  Personal Accountant
//
//  Created by Алексей on 24.08.2022.
//

import UIKit

final class ShoppingListViewController: UIViewController {
    
    private let viewContext = StorageManager.shared.persistentContainer.viewContext
    
    private var tableView: UITableView = {
        let tableView = UITableView()
        return tableView
    }()
    
    private var shoppingList: [Product] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .gray
        addingSubviews(tableView)
        setupConstraints()
        print(shoppingList)
    }
}

extension ShoppingListViewController: UITableViewDelegate {
    private func showAlert(title: String?, message: String?) {
        let alert = UIAlertController(
            title: "",
            message: "",
            preferredStyle: .alert
        )
        
        present(alert, animated: true)
    }
    
    private func showDeleteAlert() {
        let alert = UIAlertController(title: "test", message: "Что сделать?", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { _ in
            1
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel))
        present(alert, animated: true)
    }
}

extension ShoppingListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        let shoppingElement = shoppingList[indexPath.row]
        cell.textLabel?.text = shoppingElement.title
        return cell
    }
}

extension ShoppingListViewController {
    private func addingSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }
    
    private func setupConstraints() {
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}
