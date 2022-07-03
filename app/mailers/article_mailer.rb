class ArticleMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.article_mailer.booking_confirmation_for.subject
  #
  def booking_confirmation_for(article)
    @article = article

    mail to: article.customer.email, subject: "Booking confirmation for your #{article.service.name} at #{article.start_at.to_date}"
  end
end
