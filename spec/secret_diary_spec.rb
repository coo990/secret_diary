#SecretDiary
#  - lock
#  - unlock
#  - add_entry
#  - get_entries
#
#Initially the `SecretDiary` class is locked, meaning `add_entry` and `get_entries` should throw an error.
#
#When the user calls `unlock`, `add_entry` and `get_entries` should work as desired.
#
#When the user locks the diary, by calling `lock`, `add_entry` and `get_entries` should, again, throw an error.
require 'secret_diary.rb'

describe Lock do

  it 'SecretDiary is locked' do
    expect(subject.lock).to eq(true)
  end

  it 'SecretDiary is unlocked' do
      expect(subject.unlock).to eq(false)
  end

end

describe Entry do
  let(:lock) { Lock.new }
  describe '#add_entry' do
    it 'Add entry' do
      lock.unlock
      entry = Entry.new(lock)
      expect(entry.add_entry).to eq('Begin entry!')
    end

    it 'raises error when locked' do
      lock = Lock.new
      entry = Entry.new(lock)
      expect{ entry.add_entry }.to raise_error 'Locked, no entry!'
    end
  end

  describe '#get_entries' do
    it 'Get entries' do
      lock.unlock
      entry = Entry.new(lock)
      expect(entry.get_entries).to eq('Showing entries:')
    end

    it 'raises error when locked' do
      lock = Lock.new
      entry = Entry.new(lock)
      expect{ entry.get_entries }.to raise_error 'Locked, cannot display entries!'
    end
  end

end