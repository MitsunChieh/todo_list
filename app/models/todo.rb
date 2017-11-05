# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  title      :string           not null
#  due_date   :date             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  note       :text
#

# :nodoc:
class Todo < ApplicationRecord
  # 驗證：欄位必須有值
  # 預設不允許空白字元，可用 allow_blank: :true 開啟允許空白
  validates_presence_of :title, :due_date
  # 驗證：長度 20 個字符
  # 英文是 20 個字母，中文則是 20 個字
  validates :title, length: { maximum: 20 }

  # 判斷是否能夠刪除
  # 判斷條件可能有很多，所以將各項判斷分拆到 private method
  def can_destroy?
    # 沒過期的話，回傳 true = 可刪除
    !overdue?
  end

  # 宣告以下為 private method
  # private_method 無法被直接使用
  # `todo.overdue?` 會跳出錯誤: NoMethodError: private method `overdue?`'
  # 可以用 Ruby 原生的 Kernel#send 來呼叫 private_method: todo.send(:overdue?)
  private

  # 如果 due_date 比今天小，則回傳 true = 過期
  def overdue?
    due_date < Date.today
  end
end
