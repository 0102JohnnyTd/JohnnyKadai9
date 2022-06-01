//
//  ViewController.swift
//  JohnnyKadai9
//
//  Created by Johnny Toda on 2022/05/13.
//

import UIKit


class ViewController: UIViewController {
    private let segueIdentifier = "segueId"
    private let chibaLabel = ChibaLabel.shared
    @IBOutlet weak var prefectureLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == segueIdentifier {

            let navigationController = segue.destination as! UINavigationController
            guard let prefecturesViewController = navigationController.viewControllers[0] as? PrefecturesViewController else {
                    print("prefecturesViewControllerを取得できませんでした。")
                    return
                }
            prefecturesViewController.delegate = self
            prefecturesViewController.completion =  {  self.prefectureLabel.text = $0  }
            prefecturesViewController.presentationController?.delegate = self
            }
    }
    func loadPrefectureData() {
        prefectureLabel.text = chibaLabel.data
    }
}

extension ViewController: CustomUIButtonDelegate {
    func savePrefecturesLabel(prefecturesData: String) {
//        print("delegateメソッドが実行された")
        prefectureLabel.text = prefecturesData
    }
}

extension ViewController: UIAdaptivePresentationControllerDelegate {
    func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
        loadPrefectureData()
    }
}
