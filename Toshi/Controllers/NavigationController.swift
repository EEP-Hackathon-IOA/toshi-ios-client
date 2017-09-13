// Copyright (c) 2017 Token Browser, Inc
//
// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <http://www.gnu.org/licenses/>.

import UIKit
import SweetUIKit

public class NavigationController: UINavigationController {

    fileprivate lazy var alertView: OfflineAlertView = {
        self.defaultOfflineAlertView()
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
    }

    private func setupView() {
        setupOfflineAlertView()
    }

    func defaultOfflineAlertView() -> OfflineAlertView {
        let offlineAlertView = OfflineAlertView(withAutoLayout: true)

        return offlineAlertView
    }
}

extension NavigationController: OfflineAlertDisplaying {

    var offlineAlertView: OfflineAlertView {
        return alertView
    }

    var offlineAlertViewConstraints: [NSLayoutConstraint] {
        return [offlineAlertView.bottomAnchor.constraint(equalTo: navigationBar.bottomAnchor),
                offlineAlertView.leftAnchor.constraint(equalTo: navigationBar.leftAnchor),
                offlineAlertView.rightAnchor.constraint(equalTo: navigationBar.rightAnchor)]
    }
}