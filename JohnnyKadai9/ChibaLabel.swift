//
//  ChibaData.swift
//  JohnnyKadai9
//
//  Created by Johnny Toda on 2022/06/01.
//

import Foundation

final class ChibaLabel {
    static let shared = ChibaLabel()
    private init(){}

    private(set) var data: String?
    func saveData(prefectureData: String) {
        data = prefectureData
    }
}
