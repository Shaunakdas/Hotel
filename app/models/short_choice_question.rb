class ShortChoiceQuestion < ActiveRecord::Base
  has_many :short_choice_answers
  belongs_to :subject
  belongs_to :standard
  belongs_to :chapter
  belongs_to :topic
  belongs_to :stream
  belongs_to :sub_topic

  filterrific(
    default_filter_params: { with_difficulty: 'easy' },
    available_filters: [
      :with_chapter_id,
      :with_topic_id,
      :with_standard_id,
      :with_subject_id,
      :with_difficulty,
      :with_level,
    ]
  )

  scope :with_level, lambda {|query|
    where(:level => query)
  }
  scope :with_topic_id, lambda {|query|
    where(:topic_id => query)
  }
  scope :with_standard_id, lambda {|query|
    where(:standard_id => query)
  }
  scope :with_chapter_id, lambda {|query|
    where(:chapter_id => query)
  }
  scope :with_difficulty, lambda {|query|
    where(:difficulty => query)
  }
  scope :with_subject_id, lambda {|query|
    where(:subject_id => query)
  }

  def self.options_for_difficulty
    [
      ['Easy', 'easy'],
      ['Medium', 'medium'],
      ['Hard', 'hard']
    ]
  end

  def self.options_for_levels
    levels = []
    (1..6).each{|i| levels << [i,i]}
    levels
  end

  def self.options_for_subjects
    Subject.all.pluck(:name, :id)
  end

  def self.options_for_chapters
    Chapter.all.pluck(:name, :id)
  end

  def self.options_for_topics
    Topic.all.pluck(:name, :id)
  end

end
