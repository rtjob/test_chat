class Chat
  include Mongoid::Document
  include Mongoid::Timestamps

  field :id, type: String
  field :userName, type: String
  field :contents, type: String

  # _idカラムに関するバリデーション
  validates :id,{presence: true}
  # userNameカラムに関するバリデーション
  validates :userName,{presence: true,length: { maximum: 20 }}
  # contentsカラムに関するバリデーション
  validates :contents,{presence: true,length: { maximum: 140 }}

end
