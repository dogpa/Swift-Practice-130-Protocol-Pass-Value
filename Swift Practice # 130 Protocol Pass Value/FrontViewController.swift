//
//  FrontViewController.swift
//  Swift Practice # 130 Protocol Pass Value
//
//  Created by Dogpa's MBAir M1 on 2022/1/28.
//

import UIKit

/// FrontViewController 遵從自定義的Protocol SelectSideDelegaet
class FrontViewController: UIViewController, SelectSideDelegaet {

    @IBOutlet weak var sideImage: UIImageView!  //元素陣營圖
    @IBOutlet weak var sideNameLabel: UILabel!  //元素陣營名稱
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /// 按下後執行跳到下一頁
    @IBAction func jumpToSelectSide(_ sender: UIButton) {
        
        //透過storyboardID進行頁面切換，並將自定義的selectSideDelegate指派給FrontViewController來遵從協定內容
        let selectSideVC = storyboard?.instantiateViewController(identifier: "SelectSideViewController") as! SelectSideViewController
        selectSideVC.modalPresentationStyle = .fullScreen
        selectSideVC.selectSideDelegate = self
        present(selectSideVC, animated: true, completion: nil)
    }
    
    
    //實作selectSideDelegate內的chooseSide內容，完成畫面顯示
    func chooseSide(image: UIImage, sideName: String, sideColor: UIColor) {
        print("執行Protocol In FrontVC")
        sideImage.image = image             //更改陣營圖片
        sideNameLabel.text = sideName       //更改陣營名稱
        view.backgroundColor = sideColor    //更改背景色
    }

}
