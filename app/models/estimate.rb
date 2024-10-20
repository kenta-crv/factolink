class Estimate < ApplicationRecord
  belongs_to :company, optional: true
  has_one :comment, dependent: :destroy

  validates :co, {presence: true} #会社名
  validates :name, {presence: true}  #名前
  validates :tel, {presence: true} #電話番号
  validates :mobile, {presence: true} #携帯番号
  validates :address, {presence: true} #住所
  validates :email, {presence: true} #メールアドレス
  validates :price, {presence: true} #売却額
  validates :use, {presence: true} #使い道
end
