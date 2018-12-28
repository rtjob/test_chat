class Chat
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: String
  # field :sex, type: String
  field :userName, type: String
  field :comments, type: String

  # _idカラムに関するバリデーション
  validates :id,{presence: true}
  # sexカラムに関するバリデーション
  # validates :sex,{presence: true}
  # userNameカラムに関するバリデーション
  validates :userName,{presence: true,length: { maximum: 20 }}
  # commentsカラムに関するバリデーション
  validates :comments,{presence: true,length: { maximum: 140 }}

end
