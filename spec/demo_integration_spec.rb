require 'diary_entry'
require 'diary_entry_formatter'

RSpec.describe "integration" do
  it "formats a diary entry" do
    diary_entry = DiaryEntry.new("my title", "my contents")
    diary_entry_formatter = DiaryEntryFormatter.new(diary_entry)
    expect(diary_entry_formatter.format).to eq "my title: my contents"
  end
end