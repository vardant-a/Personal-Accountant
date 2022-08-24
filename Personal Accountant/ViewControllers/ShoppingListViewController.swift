//
//  ShoppingListViewController.swift
//  Personal Accountant
//
//  Created by Алексей on 24.08.2022.
//

import UIKit

final class ShoppingListViewController: UIViewController {
    
    private var searchController = UISearchController(searchResultsController: nil)
    
    private var tableView: UITableView = {
        let tableView = UITableView()
//        tableView.register(ShoppingListCell.self, forCellReuseIdentifier: tableViewCell.cellID)
        return tableView
    }()
    
    private let tableViewCell = ShoppingListCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addingSubviews(searchController.searchBar, tableView)
        setupConstraints()
    }
}

extension ShoppingListViewController: UITableViewDelegate {
    
}

extension ShoppingListViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "1"
        return cell
    }
    
    
}

extension ShoppingListViewController {
    private func addingSubviews(_ subviews: UIView...) {
        subviews.forEach { view.addSubview($0) }
    }
    
    private func setupConstraints() {
        searchController.searchBar.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            searchController.searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 116),
            searchController.searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            searchController.searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

extension ShoppingListViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    

}
