require 'rails_helper'

RSpec.describe 'タスク管理機能', type: :model do
  before do
    @user = FactoryBot.create(:user)
  end
  it 'admin_titleが空ならバリデーションが通らない' do
    story = Story.new(admin_title: '', title: '失敗テスト')
    expect(story).not_to be_valid
  end
  it 'titleが空ならバリデーションが通らない' do
    story = Story.new(title: '失敗テスト', title: '')
    expect(story).not_to be_valid
  end
  it 'admin_titleとtitleに内容が記載されていればバリデーションが通る' do
    story = Story.new(admin_title: '成功テスト', title: '成功テスト2', user: @user)
    expect(story).to be_valid
  end
end
