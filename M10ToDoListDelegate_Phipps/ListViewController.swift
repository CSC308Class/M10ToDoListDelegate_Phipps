//
//  ViewController.swift
//  M10ToDoListDelegate_Phipps
//
//  Created by Makendra Phipps on 4/14/26.
//

import UIKit

class ListViewController: UIViewController {

    var toDoList = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination.children.first as? AddViewController{
            vc.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ListViewController: ToDoDelegate{
    func addViewController(_ vc: UIViewController, didInsert todo: String) {
        toDoList.append(todo)
        tableView.reloadData()
    }
    
    func addViewControllerDidCancel(_ vc: UIViewController) {
        
    }
    
    
}

extension ListViewController: UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = toDoList[indexPath.row]
        return cell
    }
    
    
}

