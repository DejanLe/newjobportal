class Gig < ApplicationRecord
   belongs_to :user , optional: true
   has_many :proposals
   belongs_to :category  , optional: true
   has_many :abilities
   has_many :skills, through: :abilities
   geocoded_by :location
   after_validation :geocode
   
   def self.search(params)
     gigs = Gig.where("name like ? or description like?", "%#{params[:search]}%",  "%#{params[:search]}%") if params[:search].present?
     gigs
   end
end
