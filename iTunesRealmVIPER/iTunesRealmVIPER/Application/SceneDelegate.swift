//
//  SceneDelegate.swift
//  iTunesRealmVIPER
//
//  Created by Ибрагим Габибли on 02.02.2025.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene,
               willConnectTo session: UISceneSession,
               options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)

        // MARK: - viewControllers
        let searchViewController = SearchRouter.createModule()
        let searchHistoryViewController = SearchHistoryRouter.createModule()

        // MARK: - UITabBarController
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [searchViewController, searchHistoryViewController]
        tabBarController.tabBar.barTintColor = .white

        // MARK: - UIWindow
        window.rootViewController = tabBarController
        self.window = window
        window.makeKeyAndVisible()
    }
}
