# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

spreadsheet = Roo::Spreadsheet.open("./db/uploads/accounts.xlsx")

(2..spreadsheet.last_row).each do |row|
    account = Account.find_or_initialize_by(account_title: spreadsheet.cell(row, 'B'))
    account.account_type = spreadsheet.cell(row, 'C')
    account.parent = spreadsheet.cell(row, 'D')
    account.code_order = spreadsheet.cell(row, 'E')
    account.order = spreadsheet.cell(row, 'F')
    account.save!
end


["2020", "2021", "2022"].each do |period_title|
    period = Period.find_or_initialize_by(period_title: period_title)
    period.start_date = "#{period_title}/01/01".to_date
    period.end_date = period.start_date.end_of_year
    period.active = period.end_date > Date.today ? true : false
    period.save!
end

spreadsheet = Roo::Spreadsheet.open("./db/uploads/branches.xlsx")

(2..spreadsheet.last_row).each do |row|
    branch = Branch.find_or_initialize_by(branch_name: spreadsheet.cell(row, 'B'))
    branch.branch_code = spreadsheet.cell(row, 'C')
    branch.approver = spreadsheet.cell(row, 'D')
    branch.position = spreadsheet.cell(row, 'E')
    branch.initials = spreadsheet.cell(row, 'F')
    branch.save!
end