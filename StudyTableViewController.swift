//
//  StudyTableViewController.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/27.
//

import UIKit

class StudyTableViewController: UITableViewController {
    
    let studyList: [String] = ["변수", "상수", "열거형", "옵셔널 바인딩", "메서드", "프로퍼티", "dafa"]

    let appleList = ["아이폰", "아이패드", "애플워치", "에어팟"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 셀 높이가 고정이라면 viewDidLoad에서 한 번만 지정해준다
        tableView.rowHeight = 60

    }

    // 섹션 갯수
    override func numberOfSections(in tableView: UITableView) -> Int {
        // 반환만 하는 함수라면 return 생략 가능
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return section == 0 ? "첫 번째 섹션" : "두 번째 섹션"
        
        if section == 0 {
            return "첫 번째 섹션"
        } else if section == 1{
            return "두 번째 섹션"
        } else if section == 2{
            return "세 번째 섹션"
        }
        
        return ""
    }
    
    //1. 셀 갯수 (필수요소)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return section == 0 ? studyList.count : appleList.count
    }

    //2. 셀 데이터 및 디자인 처리 (필수)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //identifier가 없는 셀이 있을 수 있기 때문에 옵셔널로 반환을 해줌 -> 해제가 필요!
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell")!
        
//        cell.CellStyle = .
        
        if indexPath.section == 0 {
            cell.textLabel?.text = studyList[indexPath.row]
            cell.detailTextLabel?.text // cell 스타일에 따라 레이블, 이미지 등이 있을 수도 없을 수도 있기 때문에 옵셔널로 존재한다
        } else {
            cell.textLabel?.text = appleList[indexPath.row]
        }
        
//        cell.textLabel?.text = studyList[indexPath.row]

        
//        cell.textLabel?.text = "\(indexPath) 위치에 있는 셀입니다"
        
        return cell
    }
    
//    //3. 셀 높이: 서비스 구현에 따라 필요한 경우가 많지만, 항상 같은 높이를 셀에서 사용한다면 비효율적일 수 있음!, 화면이 보일 때 마다 실행되기 때문이다
//    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {

//        if indexPath.row == 0 {
//            return 50
//        } else {
//            return 100
//        }
//        print(#function)
//        return 50
//    }
}
