class SecondTopic < ActiveRecord::Base
  belongs_to :subject
  belongs_to :standard
  belongs_to :chapter
  belongs_to :stream
  has_many :sub_topics
  has_many :short_choice_questions
  has_many :extra_marks_questions
  has_many :user_scores, as: :entity

  def stream_position
    self.id
  end

end
