//
//  TodoCSInformation.swift
//  SeSacWeek3
//
//  Created by 홍수만 on 2023/07/28.
//

import UIKit

struct TodoCSInformation {
    
    //타입 메서드는 인스턴스 생성과 상관 없이 사용 가능!
    static func randomBackgroundColor() -> UIColor { //static이 없으면 인스턴스 메서드이기 떄문에 구조체 내에서 사용 불가능, 인스턴스로 만들어줘야 접근 가능
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }
    
    //인스턴스 프로퍼티
    var list = [TodoCS(main: "잠자기", sub: "23.07.03", like: false, done: true, color: randomBackgroundColor()),
                TodoCS(main: "영화보기", sub: "23.07.30", like: true, done: false, color: randomBackgroundColor()),
                TodoCS(main: "장보기", sub: "23.08.13", like: false, done: true, color: randomBackgroundColor())]
}
