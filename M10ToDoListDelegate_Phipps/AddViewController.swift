//
//  AddViewController.swift
//  M10ToDoListDelegate_Phipps
//
//  Created by Makendra Phipps on 4/14/26.
//

import UIKit

class AddViewController: UIViewController {

    
    weak var delegate: ToDoDelegate?
    
    @IBOutlet weak var textField: UITextField!
    
    @IBAction func cancelButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    
    @IBAction func saveButton(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


}
