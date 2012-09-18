class Nom < ActiveRecord::Base
  attr_accessible :ampm, :city, :daysopen, :name, :state, :street, :streetnum, :tele, :time, :zip
  validates(:name, presence: true, length: {maximum: 50})
  validates(:city, presence: true, length: {maximum: 50})
  validates(:state, presence: true)
  validates(:streetnum, presence: true, length: {maximum: 10})
  validates(:tele, presence: true, length: {maximum: 10})
  validates(:time, presence: true)
  validates_format_of :zip, :with => %r{\d{5}(-\d{4})?}, :message => "should be 12345"
  validates(:daysopen, presence: true)
  validates(:ampm, presence: true)
end
