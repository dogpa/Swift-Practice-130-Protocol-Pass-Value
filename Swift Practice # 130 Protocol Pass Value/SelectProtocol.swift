//
//  SelectProtocol.swift
//  Swift Practice # 130 Protocol Pass Value
//
//  Created by Dogpa's MBAir M1 on 2022/1/28.
//


import UIKit


/// 自定義Protocol 執行 func 內含三個參數
protocol SelectSideDelegaet {
    
    /// 執行項目Protocol內的chooseSide內容
    /// - Parameters:
    ///   - image: 陣營圖片
    ///   - sideName: 陣營名稱
    ///   - sideColor: 背景色
    func chooseSide(image:UIImage, sideName:String, sideColor:UIColor)
}
