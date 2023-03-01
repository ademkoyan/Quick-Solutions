private func configureNavBar() {
        let button = UIButton(type: .custom)
        button.frame = CGRect(x: 0, y: 0, width: 0, height: 34)
        button.setImage(UIImage(named: "netflix-logo"), for: .normal)
        //can add a target here for button
        
        //Adding to Constraite(width-height) for leftBarButton using custom image
        let leftButton = UIBarButtonItem(customView: button)
        let currWidth = leftButton.customView?.widthAnchor.constraint(equalToConstant: 44)
        currWidth?.isActive = true
        let currHeight = leftButton.customView?.heightAnchor.constraint(equalToConstant: 34)
        currHeight?.isActive = true
        self.navigationItem.leftBarButtonItem = leftButton
        
        navigationItem.title = "Netflix"
        
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(image: UIImage(systemName: "person"), style: .done, target: self, action: nil),
            UIBarButtonItem(image: UIImage(systemName: "play.rectangle"), style: .done, target: self, action: nil)
        ]
        
    }
