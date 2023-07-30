//
//  AssignCase3TableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/27.
//

import UIKit

class AssignCase3TableViewController: UITableViewController {
    
    var todoList: [Todo] = [
    Todo.init(todoTitle: "그립톡 구매하기", did: true, favorites: true),
    Todo.init(todoTitle: "사이다 구매", did: false, favorites: false),
    Todo.init(todoTitle: "아이패드 케이스 최저가 알아보기", did: false, favorites: true),
    Todo.init(todoTitle: "양말", did: false, favorites: true)]

    @IBOutlet var userInputTextField: UITextField!
    @IBOutlet var insertTodoButton: UIButton!
    @IBOutlet var tableHeaderView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        
        designTableHeaderView()
        

    }

    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    @IBAction func textFieldKeyboardExit(_ sender: UITextField) {
        if let userInput = userInputTextField.text {
            if userInput.isEmpty{
                requestAlert()
            } else {
                todoList.append(Todo.init(todoTitle: userInput))
            
                tableView.reloadData()
            }
        }
    }
    
    @IBAction func insertTodoList(_ sender: UIButton) {
        if let userInput = userInputTextField.text {
            
            if userInput.isEmpty {
                requestAlert()
            } else {
                todoList.append(Todo.init(todoTitle: userInput))
                
                //2. 테이블뷰 갱신 - 셀의 추가 삭제 등 변화가 일어날 때 마다 갱신해줘야함
                tableView.reloadData()
            }
            
            view.endEditing(true)
        }
    }
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(todoList.count)
        return todoList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Case3TableViewCell.identifier) as! Case3TableViewCell
        
        let todo = todoList[indexPath.row]
                
        cell.configureCell(row: todo)

        return cell
    }

    func designTableHeaderView() {
        tableHeaderView.backgroundColor = .systemGray6
        tableHeaderView.layer.cornerRadius = 10
        
        userInputTextField.placeholder = "무엇을 구매하실건가요?"
        userInputTextField.backgroundColor = .systemGray6
       
        
        insertTodoButton.setTitle("추가", for: .normal)
        insertTodoButton.setTitleColor(.black, for: .normal)
        insertTodoButton.layer.cornerRadius = 10
        insertTodoButton.backgroundColor = .systemGray5
    
    }
}
