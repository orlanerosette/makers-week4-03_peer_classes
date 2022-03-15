require 'secret_diary'

RSpec.describe SecretDiary do
  it "raises error 'Go away!' if the diary is locked" do
    locked_entry = double :diary, contents: "I am a locked entry"
    locked_diary = SecretDiary.new(locked_entry)
    expect {locked_diary.read}.to raise_error "Go away!"
  end

  it "returns contents when diary is unlocked" do
    unlocked_entry = double :diary, contents: "I am an unlocked entry"
    unlocked_diary = SecretDiary.new(unlocked_entry)
    unlocked_diary.unlock
    expect(unlocked_diary.read).to eq "I am an unlocked entry"
  end
end