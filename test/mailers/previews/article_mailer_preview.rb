# Preview all emails at http://localhost:3000/rails/mailers/article_mailer
class ArticleMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/article_mailer/booking_confirmation_for
  def booking_confirmation_for
    ArticleMailer.booking_confirmation_for(Article.first)
  end

end
