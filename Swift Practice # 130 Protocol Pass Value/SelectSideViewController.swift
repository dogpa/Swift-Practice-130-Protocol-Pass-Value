//
//  SelectSideViewController.swift
//  Swift Practice # 130 Protocol Pass Value
//
//  Created by Dogpa's MBAir M1 on 2022/1/28.
//

import UIKit

class SelectSideViewController: UIViewController{
    
    //指派變數為SelectSideDelegaet的Protocol
    var selectSideDelegate: SelectSideDelegaet!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //下方三個陣營Button
    //分別執行selectSideDelegate的.chooseSide內容，並針對不同陣營的狀況輸入不同的參數
    //執行完後返回第一頁，順便將值送到第一頁後透過各自指派的值做出不同的頁面變化
    @IBAction func grassSide(_ sender: UIButton) {
        selectSideDelegate.chooseSide(image: UIImage(named: "grass")!, sideName: "草系", sideColor: .green)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fireSide(_ sender: UIButton) {
        selectSideDelegate.chooseSide(image: UIImage(named: "fire")!, sideName: "火系", sideColor: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func waterSide(_ sender: UIButton) {
        selectSideDelegate.chooseSide(image: UIImage(named: "water")!, sideName: "水系", sideColor: .blue)
        dismiss(animated: true, completion: nil)
    }
    
    
}
