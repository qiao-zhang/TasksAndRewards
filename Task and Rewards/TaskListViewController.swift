//
//  FirstViewController.swift
//  Task and Rewards
//
//  Created by Qiao Zhang on 11/10/16.
//  Copyright © 2016 Qiao Zhang. All rights reserved.
//

import UIKit

class TaskListViewController: UIViewController {
  
  // MARK: Outlets
  @IBOutlet weak var tableView: UITableView!
  
  // MARK: Properties
  var tasks: [String] = []
  
  // MARK: Actions
  @IBAction func addTask(_ sender: UIBarButtonItem) {
    tasks.append("Task #\(tasks.count)")
    print(String(format: "%@", tasks))
    tableView.reloadData()
  }
  
  

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    tableView.dataSource = self
    tableView.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

}

extension TaskListViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView,
                 numberOfRowsInSection section: Int) -> Int {
    return tasks.count
  }
  
  func tableView(_ tableView: UITableView,
                 cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TaskCell",
                                             for: indexPath)
    cell.textLabel?.text = tasks[indexPath.row]
    return cell
  }
}

extension TaskListViewController: UITableViewDelegate {
  
}
