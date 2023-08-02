//
//  CustomCellTableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit

/*
 1.파티를 막자
 2.sender.tag
 3.데이터
 */

class CustomCellTableViewController: UITableViewController {
    
    @IBOutlet var searchBar: UISearchBar!
    
    //observer
    var todo = TodoCSInformation() {
        didSet { // 변수가 달라짐을 감지!
//            print("DidSet이 뭘까..")
            tableView.reloadData()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 80
        
        searchBar.placeholder = "할 일을 입력해보세요"
        searchBar.searchTextField.addTarget(self, action: #selector(searchBarReturnTapped), for: .editingDidEndOnExit)

    }
    
    @objc func searchBarReturnTapped() {
        //Todo 항목을
        let data = TodoCS(main: searchBar.text!, sub: "23.08.01", like: false, done: false, color: TodoCSInformation.randomBackgroundColor()) //옵셔널 해제해주기
        
        //list에 추가
//        todo.list.append(<#T##newElement: TodoCS##TodoCS#>) // 배열 뒤쪽에 추가
        todo.list.insert(data, at: 0) // 배열 앞쪽에 추가
        
        //UX - seachbar에 입력된 내용 없애주기
        searchBar.text = ""
        
        //갱신 - 데이터가 변경되었기 때문에
//        tableView.reloadData()
    }

    //1.셀 갯수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    
    //2.셀 디자인
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier) as! CustomTableViewCell
        
        let row = todo.list[indexPath.row]
                
        cell.configureCell(row: row)
        
        //IBAction 연결하면 버튼을 누르면 다른 셀들도 일괄 적용되기 때문에 코드로 구현
        cell.likeButton.tag = indexPath.row
        cell.likeButton.addTarget(self, action: #selector(likeButtonClicked), for: .touchUpInside)
        
        return cell
    }
    
    
    @objc func likeButtonClicked(_ sender: UIButton) {
        print("clicked \(sender.tag)")
        
        todo.list[sender.tag].like.toggle()
        
//        tableView.reloadData()
        
    }
    
    //3. 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        vc.data = todo.list[indexPath.row]
        
        present(vc, animated: true)
        
        tableView.reloadRows(at: [indexPath], with: .none)
        
    }
    
    //삭제
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        
        //제거 -> 갱신
        todo.list.remove(at: indexPath.row)
        
//        tableView.reloadData()
    }
    
}
