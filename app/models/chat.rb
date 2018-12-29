class Chat
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Enum

  field :id, type: String
  field :sexStatus, type: Integer
  field :userName, type: String
  field :comments, type: String

  # _idカラムに関するバリデーション
  validates :id,{presence: true}
  # sexStatusカラムに関するバリデーション
  validates :sexStatus,{presence: true}
  # userNameカラムに関するバリデーション
  validates :userName,{presence: true,length: { maximum: 20 }}
  # commentsカラムに関するバリデーション
  validates :comments,{presence: true,length: { maximum: 140 }}

end
