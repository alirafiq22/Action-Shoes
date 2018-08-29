require 'roo'

class CategoryMaster < ActiveRecord::Base
  attr_accessible :AK_Status, :AK_Sub_Status, :Actioncode, :Category, :Colorname, :ImageURL, :Key, :Sub_Cat
  
  def self.import(file)
    #spreadsheet = Roo::Spreadsheet.open(file.path,  extension: :xlsx)
    #header = spreadsheet.row(1)
    #(2..spreadsheet.last_row).each do |i|
     # row = Hash[[header, spreadsheet.row(i)].transpose]
      #categorymaster = CategoryMaster.new
      #categorymaster.attributes = row.to_hash
      #categorymaster.save!
      #puts row
    #end
    #puts header
      spreadsheet = Roo::Spreadsheet.open(file.path,  extension: :xlsx)
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).each do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        product = new
        product.attributes = row.to_hash.slice(*accessible_attributes)
        product.save!
      end
      end  
end
