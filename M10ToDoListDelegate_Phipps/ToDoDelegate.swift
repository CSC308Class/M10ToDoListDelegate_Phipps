//
//  ToDoDelegate.swift
//  M10ToDoListDelegate_Phipps
//
//  Created by Makendra Phipps on 4/14/26.
//

import UIKit

protocol ToDoDelegate: AnyObject {
    
    //insert
    func addViewController(_ vc: UIViewController, didInsert todo: String)
    
    //cancel
    func addViewControllerDidCancel(_ vc: UIViewController)
}
