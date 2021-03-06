# Ribbons is an Open source Social network written in Ruby on Rails This file is licensed
# under GNU GPL v2 or later. See the LICENSE.
# Step by Step buils credit to @sudharti(Sudharsanan Muralidharan

class Post < ActiveRecord::Base
  include Shared::Callbacks
  include Mention

  belongs_to :user
  counter_culture :user
  acts_as_votable
  acts_as_commentable

  include PublicActivity::Model
  tracked only: [:create, :like], owner: Proc.new{ |controller, model| model.user }

  default_scope -> { order('created_at DESC') }

  mount_uploader :attachment, AvatarUploader

  before_validation :add_mention_links_to_content

  validates_presence_of :content
  validates_presence_of :user

  auto_html_for :content do
    html_escape
    image
    youtube(width: 400, height: 250, autoplay: true)
    link target: '_blank', rel: 'nofollow'
    simple_format
  end

end