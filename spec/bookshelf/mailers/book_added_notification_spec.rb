RSpec.describe Mailers::BookAddedNotification, type: :mailer do
  subject { Mailers::BookAddedNotification }

  before { Hanami::Mailer.deliveries.clear }

  it 'has correct `from` email address' do
    expect(subject.from).to eq('no-reply@example.local')
  end

  it 'has correct `to` email address' do
    expect(subject.to).to eq('admin@example.local')
  end

  it 'has correct `subject`' do
    expect(subject.subject).to eq('Book added!')
  end

  it 'delivers email' do
    expect { subject.deliver }.to change { Hanami::Mailer.deliveries.length }.by(1)
  end
end
