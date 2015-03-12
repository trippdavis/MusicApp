# == Schema Information
#
# Table name: albums
#
#  id             :integer          not null, primary key
#  title          :string           not null
#  band_id        :integer          not null
#  recording_type :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class Album < ActiveRecord::Base
  validates :title, :band_id, :recording_type, presence: true
  validates :recording_type, inclusion: { in: %w(Studio Live) }


  belongs_to(
    :band,
    class_name: :Band,
    foreign_key: :band_id,
    primary_key: :id
  )

  has_many(
    :tracks,
    class_name: :Track,
    foreign_key: :album_id,
    primary_key: :id,
    dependent: :destroy
  )
end
