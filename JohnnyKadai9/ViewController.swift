//
//  ViewController.swift
//  JohnnyKadai9
//
//  Created by Johnny Toda on 2022/05/13.
//

import UIKit

final class ViewController: UIViewController {
    private let segueIdentifier = "segueId"
    @IBOutlet private weak var prefectureLabel: UILabel!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {
            let navigationController = segue.destination as! UINavigationController
            let prefecturesViewController = navigationController.viewControllers[0] as! PrefecturesViewController
            prefecturesViewController.delegate = self
            prefecturesViewController.completion = { self.prefectureLabel.text = $0 }
            }
    }
}

extension ViewController: PrefecturesViewControllerDelegate {
    func savePrefecturesLabel(prefecturesData: String) {
//        print("delegateメソッドが実行された")
        prefectureLabel.text = prefecturesData
    }
}
