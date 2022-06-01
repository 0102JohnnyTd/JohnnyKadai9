//
//  PrefecturesViewController.swift
//  JohnnyKadai9
//
//  Created by Johnny Toda on 2022/05/19.
//

import UIKit

class PrefecturesViewController: UIViewController {
    @IBOutlet weak var tokyoLabelButton: UIButton!
    @IBAction func passTokyoData(_ sender: Any) {
        delegate?.savePrefecturesLabel(prefecturesData: tokyoLabelButton.titleLabel?.text ?? "取得エラーです")
            dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var kanagawaLabelButton: UIButton!
    @IBAction func passKanagawaData(_ sender: Any) {
        delegate?.savePrefecturesLabel(prefecturesData: kanagawaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true, completion: nil)
    }

    @IBOutlet weak var saitamaLabelButton: UIButton!
    @IBAction func passSaitamaData(_ sender: Any) {
        completion?(saitamaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true)
    }

    @IBOutlet weak var chibaLabelButton: UIButton!
    @IBAction func passChibaData(_ sender: Any) {
        completion?(chibaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true)
    }

    var delegate: CustomUIButtonDelegate?
    var completion: ((String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
