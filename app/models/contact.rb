class Contact < MailForm::Base
  attribute :name,      validate: true
  attribute :email,     validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message

  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "thais.paris.mallez@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
