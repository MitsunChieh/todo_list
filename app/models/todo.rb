# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  due_date   :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# :nodoc:
class Todo < ApplicationRecord
  # 驗證：欄位必須有值
  # 預設不允許空白字元，可用 allow_blank: :true 開啟允許空白
  validates_presence_of :title, :due_date
  # 驗證：長度 20 個字符
  # 英文是 20 個字母，中文則是 20 個字
  validates :title, length: { maximum: 20 }
end
