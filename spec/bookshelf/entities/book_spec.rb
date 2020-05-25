RSpec.describe Book, type: :entity do
  it 'can be initialized with attributes' do
    book = Book.new(title: 'Refactoring', author: 'Someone')

    expect(book.title).to eq('Refactoring')
    expect(book.author).to eq('Someone')
  end
end
