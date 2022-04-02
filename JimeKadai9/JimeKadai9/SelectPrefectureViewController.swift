//
//  SelectPrefectureViewController.swift
//  JimeKadai9
//
//  Created by kitano hajime on 2022/03/29.
//

import UIKit

class SelectPrefectureViewController: UIViewController {
    private(set) var selectedPrefectureName: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.backgroundColor = .gray.withAlphaComponent(0.5)
    }

    @IBAction private func tokyoSelected(_ sender: UIButton) {
        doneUpate(prefetureText: "東京都")
    }
    @IBAction private func kanagawaSelected(_ sender: UIButton) {
        doneUpate(prefetureText: "神奈川県")
    }
    @IBAction private func saitamaSelected(_ sender: UIButton) {
        doneUpate(prefetureText: "埼玉県")
    }
    @IBAction private func chibaSelected(_ sender: UIButton) {
        doneUpate(prefetureText: "千葉県")
    }

    private func doneUpate(prefetureText: String) {
        selectedPrefectureName = prefetureText
        performSegue(withIdentifier: "Exit", sender: nil)
    }
}
