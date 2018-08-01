//
//  ViewController.swift
//  Self-Sizing Table View Cells
//
//  Created by admin on 7/26/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate,UITableViewDataSource {
    var fruits: [String] = ["Giữ cho thận khỏe mạnhHãy trợ giúp chức năng thận của bạn đúng cách bằng cách tiêu thụ ít nhất một trái cam mỗi ngày. Nếu bạn thích nước cam, thì đây là cách rất tốt để bổ sung citrate giúp làm chậm tiến trình hình thành sỏi thận và có thể giúp giảm nguy cơ mắc các bệnh về thận.Xoay ngược thời gian tuổi tác. Cam tự hào về khả năng chống lão hóa mạnh mẽ nhờ hàm lượng chất chống oxy hóa cao. Vitamin C bảo vệ da khỏi tác hại từ tia UVA và UVB, kích thích sản xuất collagen, ngăn ngừa nám và tình trạng viêm da.Làm cho trái tim khỏe mạnh hơn.Đây là lý do tại sao: cam rất giàu kali, một khoáng chất rất cần thiết cho sức khỏe tim mạch. Mức độ kali thấp có thể dẫn đến nhịp tim bất thường, đặc biệt là nếu bạn bị bệnh tim. Thiếu kali là một vấn đề phổ biến hiện nay, nên đó là lý do rất quan trọng để tiêu thụ các thực phẩm giàu kali. Cam là một trong số thực phẩm đó"]
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //không cần thiết bởi nó đã được hỗ trợ căn chỉnh tự động
//        myTableView.estimatedRowHeight = 85.0
//        myTableView.rowHeight = UITableViewAutomaticDimension
    
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ArtistTableViewCell
        let fruit = fruits[indexPath.row]
        cell.bioLable.text = fruit
        
        
        return cell
        
    }

}

