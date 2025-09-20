//
//  Router.swift
//  AlloJari
//
//  Created by MAC on 20/9/2025.
//

import SwiftUI

protocol Router {
    func redirectTo<T: View> (_ view: T)
    func back(animated: Bool)
}
