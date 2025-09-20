//
//  NavigationRouter.swift
//  AlloJari
//
//  Created by MAC on 20/9/2025.
//

import Foundation
import SwiftUI
import UIKit

extension View  {
    var viewController: UIViewController {
        UIHostingController(rootView: self)
    }
}

final class NavigationRouter: Router {
    private var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func redirectTo<T>(_ view: T) where T : View {
        let viewController = view.viewController
        navigationController.pushViewController(viewController, animated: true)
    }
    
    func back(animated: Bool) {
        guard !navigationController.viewControllers.isEmpty else { return }
        navigationController.popViewController(animated: animated)
    }
}
