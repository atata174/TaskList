//
//  MainViewController.swift
//  TaskList
//
//  Created by PenguinRaja on 18.03.2021.
//

import UIKit

class MainViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupNavigationBar()
    }
    
    private func setupNavigationBar() {
        title = "TaskList"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let navBarAppearance = UINavigationBarAppearance()
        navBarAppearance.configureWithOpaqueBackground() // optional
        
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        
        navBarAppearance.backgroundColor = UIColor(
            red: 20/255,
            green: 50/255,
            blue: 100/255,
            alpha: 0.3)
        
        navigationController?.navigationBar.standardAppearance = navBarAppearance
        navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(
            barButtonSystemItem: .add,
            target: self,
            action: #selector(addNewTask))
        
        navigationController?.navigationBar.tintColor = .white
    }
    
    @objc private func addNewTask(){
        let newTaskVC = NewTaskViewController()
        present(newTaskVC, animated: true)
    }
}

