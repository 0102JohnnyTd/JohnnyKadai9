//
//  PrefecturesViewController.swift
//  JohnnyKadai9
//
//  Created by Johnny Toda on 2022/05/19.
//

import UIKit

final class PrefecturesViewController: UIViewController {
    @IBOutlet private weak var tokyoLabelButton: UIButton!
    @IBAction private func passTokyoData(_ sender: Any) {
        delegate?.savePrefecturesLabel(prefecturesData: tokyoLabelButton.titleLabel?.text ?? "取得エラーです")
            dismiss(animated: true, completion: nil)
    }

    @IBOutlet private weak var kanagawaLabelButton: UIButton!
    @IBAction private func passKanagawaData(_ sender: Any) {
        delegate?.savePrefecturesLabel(prefecturesData: kanagawaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true, completion: nil)
    }

    @IBOutlet private weak var saitamaLabelButton: UIButton!
    @IBAction private func passSaitamaData(_ sender: Any) {
        completion?(saitamaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true)
    }

    @IBOutlet private weak var chibaLabelButton: UIButton!
    @IBAction private func passChibaData(_ sender: Any) {
        completion?(chibaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true)
    }

    @IBAction private func quit(_ sender: Any) {
        dismiss(animated: true)
    }

    weak var delegate: CustomUIButtonDelegate?
    var completion: ((String) -> Void)?
}
