class ContactForm < MailForm::Base

  attribute :name, validate: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, validate: true

  def headers
    {
      subject: 'ArcadeNomad - Contact Request',
      to:      'dvcrews@gmail.com',
      from:    'dan@example.com'
    }
  end
end
