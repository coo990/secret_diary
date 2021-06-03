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

describe SecretDiary do

  it 'SecretDiary is locked' do
     expect(subject.lock).to eq('Locked')
  end
  

  it 'SecretDiary is unlocked' do
      expect(subject.unlock).to eq('Unlocked')
  end

  describe '#add_entry' do
    it 'Add entry' do
      subject.unlock
      expect(subject.add_entry).to eq('Begin entry!')
    end

    it 'raises error when locked' do
      expect{ subject.add_entry }.to raise_error 'Locked, no entry!'
    end
  end

  describe '#get_entries' do
    it 'Get entries' do
      subject.unlock
      expect(subject.get_entries).to eq('Showing entries:')
    end

    it 'raises error when locked' do
      expect{ subject.get_entries }.to raise_error 'Locked, cannot display entries!'
    end
  end

end