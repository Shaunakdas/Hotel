class Standard < ActiveRecord::Base
  has_many :subjects
  has_many :chapters
  has_many :topics
  has_many :second_topics
  has_many :sub_topics
  has_many :extra_marks_questions
  has_many :user_scores, as: :entity
end
