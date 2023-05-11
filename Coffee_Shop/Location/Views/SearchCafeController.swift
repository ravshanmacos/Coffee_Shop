//
//  SearchCafeController.swift
//  Coffee_Shop
//
//  Created by Ravshanbek Tursunbaev on 2023/05/10.
//

import UIKit

class SearchCafeController: BaseController, UISheetPresentationControllerDelegate {
    
    private let welcomingLabel: UILabel = {
        let label = UILabel()
        label.text = "Hello Robert !".uppercased()
        label.textColor = R_Color.textLight
        label.font = UIFont.systemFont(ofSize: 13, weight: .light)
        return label
    }()
    
    private let mainTitle: UILabel = {
        let label = UILabel()
        label.text = "Choose your Coffee Shop".capitalized
        label.textColor = R_Color.tabbar.inActive
        label.font = UIFont.systemFont(ofSize: 20, weight: .bold)
        return label
    }()
    
    private let searchBar: SearchBarView = {
       let view = SearchBarView()
        view.layer.cornerRadius = 5
        view.backgroundColor = R_Color.background.defaultBck
        return view
    }()
    
    private let tableview: UITableView = {
       let view = UITableView()
        return view
    }()
    
    private let headerData = ["Favorite", "Recent"]
    private let bodyData = [
        ["2 Leman St, Whitechapel"],
        ["Shewchenka, Idaho 81118", "Ivana Tarasa, 18"]
    ]
    
    
    var halfVisibleController: UISheetPresentationController{
        presentationController as! UISheetPresentationController
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
    }

    override func setupViews() {
        super.setupViews()
        view.addSubviews(welcomingLabel, mainTitle, searchBar, tableview)
    }
    
    override func setupContstraints() {
        super.setupContstraints()
        welcomingLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.equalTo(16)
        }
        mainTitle.snp.makeConstraints { make in
            make.top.equalTo(welcomingLabel.snp.bottom).offset(5)
            make.leading.equalTo(welcomingLabel.snp.leading)
        }
        searchBar.snp.makeConstraints { make in
            make.top.equalTo(mainTitle.snp.bottom).offset(10)
            make.leading.equalTo(welcomingLabel.snp.leading)
            make.trailing.equalToSuperview().offset(-16)
            make.height.equalTo(50)
        }
        tableview.snp.makeConstraints { make in
            make.top.equalTo(searchBar.snp.bottom)
            make.leading.equalTo(searchBar.snp.leading)
            make.trailing.equalTo(searchBar.snp.trailing)
            make.bottom.equalToSuperview()
        }
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        view.backgroundColor = .white
        halfVisibleController.delegate = self
        halfVisibleController.selectedDetentIdentifier = .medium
        halfVisibleController.prefersGrabberVisible = true
        halfVisibleController.detents = [
            .medium(),
            .large()
        ]
        
        tableview.delegate = self
        tableview.dataSource = self
        tableview.register(CustomCell.self, forCellReuseIdentifier: CustomCell.id)
    }

}

extension SearchCafeController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        headerData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        bodyData[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomCell.id, for: indexPath) as! CustomCell
        if indexPath.section == 0{
            cell.configure(with: bodyData[0][indexPath.row], and: .favorite)
        }else{
            cell.configure(with: bodyData[1][indexPath.row], and: .recent)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        headerData[section].uppercased()
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let headerView = view as? UITableViewHeaderFooterView{
            headerView.textLabel?.font = UIFont.systemFont(ofSize: 12, weight: .medium)
            headerView.textLabel?.textColor = R_Color.textLight
        }
    }
}

