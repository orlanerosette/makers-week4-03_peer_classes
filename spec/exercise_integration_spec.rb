require 'diary'
require 'secret_diary'

RSpec.describe "integration" do
  it "raises error 'Go away!' if the diary is locked" do
    locked_entry = Diary.new("I am a locked entry")
    locked_diary = SecretDiary.new(locked_entry)
    expect {locked_diary.read}.to raise_error "Go away!"
  end
end