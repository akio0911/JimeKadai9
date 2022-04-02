//
//  ViewController.swift
//  JimeKadai9
//
//  Created by kitano hajime on 2022/03/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var selectedPrefectureLabel: UILabel!

    @IBAction private func doneUpdate(_ segue: UIStoryboardSegue) {
        guard let selectVC = segue.source as? SelectPrefectureViewController,
              let selectedPrefectureName = selectVC.selectedPrefectureName else { return }
        selectedPrefectureLabel.text = selectedPrefectureName
    }

    @IBAction private func cancellAction(_ sender: UIStoryboardSegue) {}
}
