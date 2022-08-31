//
//  TabBarController.swift
//  Personal Accountant
//
//  Created by Алексей on 24.08.2022.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generateTabBar()
        setTabBarAppearance()
    }
    
    private func generateTabBar() {
        viewControllers = [
            UINavigationController(
                rootViewController: generateVC(
                viewController: MainViewController(),
                title: "Home",
                image: UIImage(systemName: "house.fill"))
                ),
            UINavigationController(
                rootViewController: generateVC(
                viewController: ShoppingListViewController(),
                title: "Shoping List",
                image: UIImage(systemName: "list.bullet.rectangle.fill"))
                ),
            UINavigationController(
                rootViewController: generateVC(
                viewController: ProfileViewController(),
                title: "Profile",
                image: UIImage(systemName: "person.fill"))
                )
        ]
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
            viewController.tabBarItem.title = title
            viewController.tabBarItem.image = image
            return viewController
    }
    
    private func setTabBarAppearance() {
        let roundLayer = CAShapeLayer()
        let bezierPath = UIBezierPath(
            roundedRect: CGRect(x: 10, y: 14, width: 300, height: 100),
            cornerRadius: 0)
        roundLayer.path = bezierPath.cgPath
        roundLayer.fillColor = UIColor.maintWhite.cgColor
        tabBar.tintColor = .tabBarItemAccent
        tabBar.unselectedItemTintColor = .tabBarItemNoAccent
    }
}
