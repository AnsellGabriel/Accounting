# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# spreadsheet = Roo::Spreadsheet.open("./db/uploads/accounts.xlsx")

# (2..spreadsheet.last_row).each do |row|
#     account = Account.find_or_initialize_by(account_title: spreadsheet.cell(row, 'B'))
#     account.account_type = spreadsheet.cell(row, 'C')
#     account.parent = spreadsheet.cell(row, 'D')
#     account.code_order = spreadsheet.cell(row, 'E')
#     account.order = spreadsheet.cell(row, 'F')
#     account.division = 'Life'
#     account.save!
# end

# spreadsheet = Roo::Spreadsheet.open("./db/uploads/subaccounts.xlsx")

# (2..spreadsheet.last_row).each do |row|
#     subaccount = SubAccount.find_or_initialize_by(sub_account_title: spreadsheet.cell(row, 'A'))
#     puts "#{subaccount.sub_account_title}" if subaccount.save!
# end


# ["2020", "2021", "2022"].each do |period_title|
#     period = Period.find_or_initialize_by(period_title: period_title)
#     period.start_date = "#{period_title}/01/01".to_date
#     period.end_date = period.start_date.end_of_year
#     period.active = period.end_date > Date.today ? true : false
#     period.save!
# end

# spreadsheet = Roo::Spreadsheet.open("./db/uploads/branches.xlsx")

# (2..spreadsheet.last_row).each do |row|
#     branch = Branch.find_or_initialize_by(branch_name: spreadsheet.cell(row, 'B'))
#     branch.branch_code = spreadsheet.cell(row, 'C')
#     branch.approver = spreadsheet.cell(row, 'D')
#     branch.position = spreadsheet.cell(row, 'E')
#     branch.initials = spreadsheet.cell(row, 'F')
#     branch.save!
# end


# spreadsheet = Roo::Spreadsheet.open("./db/uploads/agents.xlsx")

# (2..spreadsheet.last_row).each do |row|
#     agent = Agent.find_or_initialize_by(agent_name: spreadsheet.cell(row, 'A'))
#     agent.position = spreadsheet.cell(row, 'B')
#      agent.branch_id = Branch.find_by(branch_name: spreadsheet.cell(row, 'C').strip).id
#     agent.region = spreadsheet.cell(row,'D')
#     puts "#{agent.agent_name}" if agent.save!
# end

# spreadsheet = Roo::Spreadsheet.open("./db/uploads/banks.xlsx")

# (2..spreadsheet.last_row).each do |row|
#     bank = Bank.find_or_initialize_by(bank_title: spreadsheet.cell(row, 'A'))
#     bank.address = ''
#     bank.branch_id = 1
#     puts "#{bank.bank_title}" if bank.save!
# end


# spreadsheet = Roo::Spreadsheet.open("./db/uploads/payments.xlsx")

# (2..spreadsheet.last_row).each do |row|
#     payment = Payment.find_or_initialize_by(payment_title: spreadsheet.cell(row, 'A'))
#     payment.description = ''
#     payment.plan = 0
#     puts "#{payment.payment_title}" if payment.save!
# end

spreadsheet = Roo::Spreadsheet.open("./db/uploads/payees.xlsx")

(2..spreadsheet.last_row).each do |row|
    payee = Payee.find_or_initialize_by(payee: spreadsheet.cell(row, 'A'))
    payee.address = spreadsheet.cell(row,'B')
    puts "#{payee.payee}" if payee.save!
end