class CreateEstimates < ActiveRecord::Migration[5.2]
  def change
    create_table :estimates do |t|
      t.string :co #会社名
      t.string :name  #名前
      t.string :name_kana  #フリガナ
      t.string :tel #電話番号
      t.string :email #メールアドレス
      t.string :url #会社HP
      t.string :address #住所
      t.string :settlement #決算期
      t.string :price #買取金額
      t.string :use #使用用途
      t.string :remarks #要望
      t.timestamps
    end
  end
end
