//
//  ToDoDelegate.swift
//  M10ToDoListDelegate_Phipps
//
//  Created by Makendra Phipps on 4/14/26.
//

import UIKit

protocol ToDoDelegate: AnyObject {
    func addViewController(_ vc: UIViewController, didInsert todo: String)
    func addViewControllerDidCancel(_ vc: UIViewController)
}
