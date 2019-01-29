class Task < ApplicationRecord
  validates :content, presence: true, length: { maximum:255 }
  validates :status, presence: true, length: { maximum:10 }


  def self.statusList
    [
      ["未着手", "未着手"],
      ["着手中", "着手中"],
      ["完了", "完了"],
      ["中止", "中止"]
    ]
  end
end
