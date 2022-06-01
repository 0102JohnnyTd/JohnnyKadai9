//
//  PrefecturesViewController.swift
//  JohnnyKadai9
//
//  Created by Johnny Toda on 2022/05/19.
//

import UIKit

class PrefecturesViewController: UIViewController {

    @IBOutlet weak var tokyoLabelButton: UIButton!
    @IBAction func passTokyoLabel(_ sender: Any) {
        delegate?.savePrefecturesLabel(prefecturesData: tokyoLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var kanagawaLabelButton: UIButton!
    @IBAction func passKanagawaData(_ sender: Any) {
        delegate?.savePrefecturesLabel(prefecturesData: kanagawaLabelButton.titleLabel?.text ?? "取得エラーです")
        dismiss(animated: true, completion: nil)
    }

    var delegate: CustomUIButtonDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
