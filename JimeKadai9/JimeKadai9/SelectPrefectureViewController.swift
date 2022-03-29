//
//  SelectPrefectureViewController.swift
//  JimeKadai9
//
//  Created by kitano hajime on 2022/03/29.
//

import UIKit

class SelectPrefectureViewController: UIViewController {
    var viewController: ViewController?

    override func viewDidLoad() {
        super.viewDidLoad()
        setupNabbar()
    }

    @IBAction private func tokyoSelected(_ sender: UIButton) {
        guard let viewController = viewController else { return }
        viewController.selectedPrefecture = "東京都"
        dismiss(animated: true)
    }
    @IBAction private func kanagawaSelected(_ sender: UIButton) {
        guard let viewController = viewController else { return }
        viewController.selectedPrefecture = "神奈川県"
        dismiss(animated: true)
    }
    @IBAction private func saitamaSelected(_ sender: UIButton) {
        guard let viewController = viewController else { return }
        viewController.selectedPrefecture = "埼玉県"
        dismiss(animated: true)
    }
    @IBAction private func chibaSelected(_ sender: UIButton) {
        guard let viewController = viewController else { return }
        viewController.selectedPrefecture = "千葉県"
        dismiss(animated: true)
    }

    private func setupNabbar() {
        let navigation = UINavigationBar()
        navigation.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 40)
        let navBar = UINavigationItem()
        let cancelBar = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: #selector(dismissModal))
        navBar.leftBarButtonItem = cancelBar
        navigation.pushItem(navBar, animated: true)
        view.addSubview(navigation)
    }

    @objc func dismissModal() {
        dismiss(animated: true)
    }
}
