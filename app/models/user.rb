class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  has_many :days
  has_many :paydays
  has_many :expenditures

  def to_param
    username
  end

  def total_miles
    total = 0
    self.days.each do |day|
      total += day.miles
    end
    total
  end

  def months_miles
    total = 0
    self.days.each do |day|
      if day.date_driven
        if day.date_driven.month == Date.today.month
          total += day.miles
        end
      else
        if day.created_at.month == Date.today.month
          total += day.miles
        end
      end
    end
    total
  end

  def total_pay
    total = 0
    self.paydays.each do |payday|
      total += payday.amount
    end
    total
  end
  def months_pay
    total = 0
    self.paydays.each do |payday|
      if payday.paydate
        if payday.paydate.month == Date.today.month
          total += payday.amount
        end
      else
        if payday.created_at.month == Date.today.month
          total += payday.amount
        end
      end
    end
    total
  end

  def total_amount_back
    total = 0
      self.paydays.each do |payday|
        if payday.amount_back
          total += payday.amount_back
        end
      end
    total
  end
  def months_amount_back
    total = 0
    self.paydays.each do |payday|
      if payday.paydate
        if payday.paydate.month == Date.today.month
          if payday.amount_back
            total += payday.amount_back
          end
        end
      else
        if payday.created_at.month == Date.today.month
          if payday.amount_back
            total += payday.amount_back
          end
        end
      end
    end
    total
  end

  def total_expenditures
    total = 0
    self.expenditures.each do |expenditure|
      total += expenditure.purchase_amount
    end
    total
  end
  def months_expenditures
    total = 0
    self.expenditures.each do |expenditure|
      if expenditure.date_spent
        if expenditure.date_spent.month == Date.today.month
          total += expenditure.purchase_amount
        end
      else
        if expenditure.created_at.month == Date.today.month
          total += expenditure.purchase_amount
        end
      end
    end
    total
  end
end
