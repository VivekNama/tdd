class Show < ActiveRecord::Base
  attr_accessible :name, :picture

  validates_presence_of :name, :message => "Please specify a name."
  validates_presence_of :picture, :message => "Please specify a picture."
end