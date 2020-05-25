module Mailers
  class BookAddedNotification
    include Hanami::Mailer

    from    'no-reply@example.local'
    to      'admin@example.local'
    subject 'Book added!'
  end
end
