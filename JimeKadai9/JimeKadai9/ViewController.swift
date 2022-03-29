//
//  ViewController.swift
//  JimeKadai9
//
//  Created by kitano hajime on 2022/03/29.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak private var selectedPrefectureLabel: UILabel!
    var selectedPrefecture: String? {
        didSet {
            guard let selectedPrefecture = selectedPrefecture else { return }
            selectedPrefectureLabel.text = selectedPrefecture
        }
    }

    @IBAction private func selectButtonTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let modal = storyBoard.instantiateViewController(withIdentifier: "Prefecture")
                as? SelectPrefectureViewController else { return }
        modal.viewController = self
        self.present(modal, animated: true)
    }
}
