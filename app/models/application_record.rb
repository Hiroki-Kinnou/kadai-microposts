class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  def self.search(search) #self.はUser.を意味
    if search
      User.where(['name LIKE ?', "%#{search}%"]) #検索name部分一致で表示
    else
      User.all 
    end
  end
end
