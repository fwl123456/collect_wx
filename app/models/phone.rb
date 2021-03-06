class Phone
  include Mongoid::Document
  include Mongoid::Timestamps

  field :sn, type: String # 设备号
  field :name, type: String # 文章名称
  field :status, type: Integer, default: 0 # 设备状态 -1 掉线 0 未分配 1 使用中
  # field :online_time, type: Time # 在线时间
  field :start_time, type: Time # 登录时间 
  has_many :article_logs
end