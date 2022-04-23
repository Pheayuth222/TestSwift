//
//  MyLeaveDetailSheetViewController.swift
//  KOSIGN_LMS
//
//  Created by Phea yuth on 3/30/22.
//

import UIKit

struct MyDetails{
    let title: String
    let description: String
}

class MyLeaveDetailSheetViewController: UIViewController {
    
    @IBOutlet weak var slideIdicator    : UIView!
    @IBOutlet weak var titleLabel       : UILabel!
    @IBOutlet weak var tableView        : UITableView!
    
    
    var hasSetPointOrigin = false
    var pointOrigin: CGPoint?
    
    let data: [MyDetails] = [
        MyDetails(title: "Leave Type", description: "Annual Leave"),
        MyDetails(title: "Start Date", description: "02/04/2022, morning"),
        MyDetails(title: "End Date", description: "02/04/2022, afternoon"),
        MyDetails(title: "Duration", description: "Half Day"),
        MyDetails(title: "Status", description: "Requested"),
        MyDetails(title: "Reason", description: "My Aunt's Wedding")
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureRecognizerAction))
        view.addGestureRecognizer(panGesture)
        
        slideIdicator.roundCorners(.allCorners, radius: 10)
//        testButton.roundCorners(.allCorners, radius: 10)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "MyRequestTableViewCell", bundle: nil), forCellReuseIdentifier: "MyRequestTableViewCell")
        
        self.tableView.allowsSelection = false
        
        // disable scrolling in table view
        tableView.alwaysBounceVertical = false
    }
    
    override func viewDidLayoutSubviews() {
        if !hasSetPointOrigin {
            hasSetPointOrigin = true
            pointOrigin = self.view.frame.origin
        }
    }
    
    //MARK: - Slide Gesturefrom buttom
    @objc func panGestureRecognizerAction(sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: view)
        
        // Not allowing the user to drag the view upward
        guard translation.y >= 0 else { return }
        
        // setting x as 0 because we don't want users to move the frame side ways!! Only want straight up or down
        view.frame.origin = CGPoint(x: 0, y: self.pointOrigin!.y + translation.y)
        
        if sender.state == .ended {
            let dragVelocity = sender.velocity(in: view)
            if dragVelocity.y >= 1300 {
                self.dismiss(animated: true, completion: nil)
            } else {
                // Set back to original position of the view controller
                UIView.animate(withDuration: 0.3) {
                    self.view.frame.origin = self.pointOrigin ?? CGPoint(x: 0, y: 400)
                }
            }
        }
    }


}

extension MyLeaveDetailSheetViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyRequestTableViewCell", for: indexPath) as! MyRequestTableViewCell
        cell.LblTitle.text = data[indexPath.row].title
        cell.LblDescr.text = data[indexPath.row].description
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50
    }
    
    
    
}
