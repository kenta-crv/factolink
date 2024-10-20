class EstimateMailer < ActionMailer::Base
  default from: "info@factolink.jp"
  def received_email(estimate)
    @estimate = estimate
    mail to: "info@factolink.jp"
    mail(subject: '売掛金（請求書）売却のファクタリングサービス『ファクタリンク』にお問い合わせ頂きありがとうございます。') do |format|
      format.text
    end
  end

  def send_email(estimate)
    @estimate = estimate
    mail to: estimate.email
    mail(subject: '売掛金（請求書）売却のファクタリングサービス『ファクタリンク』にお問い合わせ頂きありがとうございます。') do |format|
      format.text
    end
  end

end
