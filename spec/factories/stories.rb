# frozen_string_literal: true

FactoryBot.define do
  factory :story do
    admin_title { '管理用タイトル1' }
    title { 'タイトル1' }
    thumbnail_image { File.new("#{Rails.root}/db/fixtures/1.jpeg") }
    user
  end

  factory :second_story, class: Story do
    admin_title { '管理用タイトル2' }
    title { 'タイトル2' }
    thumbnail_image { File.new("#{Rails.root}/db/fixtures/2.jpeg") }
    user
  end
end

