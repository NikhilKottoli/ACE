# app/mailers/blog_mailer.rb
class BlogMailer < ApplicationMailer
  def notify_users(blog)
    @blog = blog
    @subscribers = Subscription.pluck(:email)

    @subscribers.each do |subscriber_email|
      mail(to: subscriber_email, subject: "New Blog Created") do |format|
        format.html
      end
    end
  end
end
