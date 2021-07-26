//
//  Model.swift
//  SwiftUIImageList
//
//  Created by 손태일 on 2021/07/23.
//

import Foundation

struct GiphyDataModel : Codable {
   var resrceGrpId : String?               // 상품 그룹 고유ID
   var resrceGrpName : String?             // 상품 ID
   var imgFileUrl : String?                // 상품 그룹 썸네일 URL
   var prodStatus : String?                // (01:New, 02:Hot, 03:Sale, 99:Normal)

}
