# -*- coding: utf-8 -*-

Factory.define :survey do |f|
  f.finish_url 'http://viborhostinga.dev'
end

Factory.define :page do |f|
  f.sequence(:ordinal_nb) { |n| n }
end

Factory.define :question do |f|
  f.sequence(:title) { |n| "Вопрос #{n}?" }
  f.sequence(:ordinal_nb) { |n| n }
end


Factory.define :answer do |f|
  f.sequence(:title) { |n| "Ответ #{n}." }
  f.sequence(:ordinal_nb) { |n| n }
end

def create_page(survey)
  page = Factory.create(:page, :survey_id => survey)
  question = Factory.create(:question, :page_id => page)
  Factory.create(:answer, :question_id => question)
  Factory.create(:answer, :question_id => question)
  page
end

